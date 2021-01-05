//
//  IndexParser.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 02.01.21.
//


import Foundation


public class IndexParser {

    public func parse(content: String) -> IndexResult {
        let expectedRowCount = parseExpectedRowCount(content: content)
        let rows = parseRows(content: content).compactMap { row -> IndexRow? in
            guard let url = parseURL(row: row),
                  let date = parseDate(row: row),
                  let subject = parseSubject(row: row)
            else {
                return nil
            }
            return IndexRow(url: url, date: date, subject: IndexRow.Subject(string: subject))
        }
        return IndexResult(rawContent: content, expectedRowCount: expectedRowCount, rows: rows)
    }

    private func parseExpectedRowCount(content: String) -> Int? {
        // ([0-9]*) Treffer gefunden
        guard let regex = try? NSRegularExpression(pattern: #"([0-9]*) Treffer gefunden"#, options: []) else { return nil }
        let range = NSRange(content.startIndex..., in: content)
        guard let match = regex.firstMatch(in: content, options: [], range: range) else { return nil }
        guard let matchRange = Range(match.range(at: 1), in: content) else { return nil }
        let matchString = String(content[matchRange])
        return Int(matchString)
    }

    private func parseRows(content: String) -> [String] {
        // <LI>([\s\S]*?)<\/LI>
        guard let regex = try? NSRegularExpression(pattern: #"<LI>([\s\S]*?)<\/LI>"#, options: []) else { return [] }
        let range = NSRange(content.startIndex..., in: content)
        let matches = regex.matches(in: content, options: [], range: range)
        return matches.compactMap {
            guard let range = Range($0.range, in: content) else { return nil }
            return String(content[range])
        }
    }

    private func parseURL(row: String) -> String? {
        // '([\s\S]*)'
        // \\'([\s\S]*)\\'\)
        guard let regex = try? NSRegularExpression(pattern: #"\'([\s\S]*)\'\)"#, options: []) else { return nil }
        let range = NSRange(row.startIndex..., in: row)
        guard let match = regex.firstMatch(in: row, options: [], range: range) else { return nil }
        guard let matchRange = Range(match.range(at: 1), in: row) else { return nil }
        return String(row[matchRange])
    }

    lazy var dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy"
        return df
    }()

    private func parseDate(row: String) -> Date? {
        // >([0-9]{2}.[0-9]{2}.[0-9]{4})<
        guard let regex = try? NSRegularExpression(pattern: #">([0-9]{2}.[0-9]{2}.[0-9]{4})<"#, options: []) else { return nil }
        let range = NSRange(row.startIndex..., in: row)
        guard let match = regex.firstMatch(in: row, options: [], range: range) else { return nil }
        guard let matchRange = Range(match.range(at: 1), in: row) else { return nil }
        let stringDate = String(row[matchRange])
        return dateFormatter.date(from: stringDate)
    }

    private func parseSubject(row: String) -> String? {
        // <ul>([\s\S]*) <br>
        guard let regex = try? NSRegularExpression(pattern: #"<ul>([\s\S]*) <br>"#, options: []) else { return nil }
        let range = NSRange(row.startIndex..., in: row)
        guard let match = regex.firstMatch(in: row, options: [], range: range) else { return nil }
        guard let matchRange = Range(match.range(at: 1), in: row) else { return nil }
        return String(row[matchRange])
    }

}


public struct IndexResult {

    public var rawContent: String
    public var expectedRowCount: Int?
    public var rows: [IndexRow]

}


public struct IndexRow {

    public var url: String
    public var date: Date
    public var subject: Subject

    public struct Subject {

        public var string: String

        public var name: String?
        public var location: String?
        public var category: String?
        public var docketNumber: String?

        public init(string: String) {
            self.string = string

            var components = string.components(separatedBy: ", ")
            while components.count > 3 {
                components[0] = [components[0], components[1]].joined(separator: ", ")
                components.remove(at: 1)
            }
            if components.count == 3 {
                name = components[0]
                location = components[1]

                // docket number is last element and seperated by " " from rest of the string
                // just to make sure, category doesnt contain any " ", we rejoining the first components

                if let categoryAndDocketNumber = components[2].seperateCategoryAndDocketNumber() {
                    category = categoryAndDocketNumber.0
                    docketNumber = categoryAndDocketNumber.1
                }
                else {
                    print("Unable to handle category and docket number \(components[2])")
                }
            } else {
                print("Unable to handle subject: \(string)")
            }
        }

    }

}


internal extension String {

    func seperateCategoryAndDocketNumber() -> (String, String)? {
        let categoryAndDocketNumber = components(separatedBy: " ")
        if categoryAndDocketNumber.count >= 2 {
            let category = categoryAndDocketNumber.dropLast().joined(separator: " ")
            let docketNumber = categoryAndDocketNumber.last!
            return (category, docketNumber)
        } else {
            return nil
        }
    }

}
