//
//  DetailParser.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 03.01.21.
//


import Foundation


public class DetailParser {

    lazy var dateFormatterForDateOfEnrollment: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy"
        return df
    }()

    public func parse(content: String) -> DetailResult {
        let court = parseCourt(content: content)?.trimmingCharacters(in: .whitespacesAndNewlines)
        let categoryAndDocketNumber = parseCategoryAndDocketNumber(content: content)?
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .seperateCategoryAndDocketNumber()
        let dateOfAnnoucement = parseDateOfAnnouncement(content: content)
        let tableBody = parseTableBody(content: content)

        var dateOfEnrollment: Date?
        if let dateOfEnrollmentString = tableBody?[2] {
            dateOfEnrollment = dateFormatterForDateOfEnrollment.date(from: dateOfEnrollmentString)
        }

        return DetailResult(rawContent: content,
                            court: court,
                            category: categoryAndDocketNumber?.0,
                            docketNumber: categoryAndDocketNumber?.1,
                            dateOfAnnouncement: dateOfAnnoucement,
                            preContent: tableBody?[0],
                            cause: tableBody?[1],
                            dateOfEnrollment: dateOfEnrollment,
                            content: tableBody?.last)
    }

    private func parseCourt(content: String) -> String? {
        // <U>([\s\S]*)Aktenzeichen
        guard let regex = try? NSRegularExpression(pattern: #"<U>([\s\S]*)Aktenzeichen"#, options: []) else { return nil }
        let range = NSRange(content.startIndex..., in: content)
        guard let match = regex.firstMatch(in: content, options: [], range: range) else { return nil }
        guard let matchRange = Range(match.range(at: 1), in: content) else { return nil }
        return String(content[matchRange])
    }

    private func parseCategoryAndDocketNumber(content: String) -> String? {
        // Aktenzeichen: ([\s\S]*)<\/U>
        guard let regex = try? NSRegularExpression(pattern: #"Aktenzeichen: ([\s\S]*)<\/U>"#, options: []) else { return nil }
        let range = NSRange(content.startIndex..., in: content)
        guard let match = regex.firstMatch(in: content, options: [], range: range) else { return nil }
        guard let matchRange = Range(match.range(at: 1), in: content) else { return nil }
        return String(content[matchRange])
    }

    lazy var dateFormatterForDateOfAnnoucement: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy HH:mm"
        return df
    }()

    private func parseDateOfAnnouncement(content: String) -> Date? {
        // Bekannt gemacht am: ([\s\S]*)<\/nobr>
        guard let regex = try? NSRegularExpression(pattern: #"Bekannt gemacht am: ([\s\S]*)<\/nobr>"#, options: []) else { return nil }
        let range = NSRange(content.startIndex..., in: content)
        guard let match = regex.firstMatch(in: content, options: [], range: range) else { return nil }
        guard let matchRange = Range(match.range(at: 1), in: content) else { return nil }
        var matchString = String(content[matchRange])

        // remove possible suffix
        let possibleSuffix = "&nbsp;Uhr"
        if matchString.hasSuffix(possibleSuffix) {
            matchString.removeLast(possibleSuffix.count)
        }

        return dateFormatterForDateOfAnnoucement.date(from: matchString)
    }

    private func parseTableBody(content: String) -> [String]? {
        // <td\b[^>]*?><br>(?<V>[\s\S]*?)<\/\s*td>
        guard let regex = try? NSRegularExpression(pattern: #"<td\b[^>]*?><br>(?<V>[\s\S]*?)<\/\s*td>"#, options: []) else { return [] }
        let range = NSRange(content.startIndex..., in: content)
        let matches = regex.matches(in: content, options: [], range: range)
        return matches.compactMap {
            guard let range = Range($0.range(at: 1), in: content) else { return nil }
            return String(content[range])
        }
    }

}


public struct DetailResult {

    public var rawContent: String

    public var court: String?
    public var category: String?
    public var docketNumber: String?
    public var dateOfAnnouncement: Date?
    public var preContent: String?
    public var cause: String?
    public var dateOfEnrollment: Date?
    public var content: String?

}
