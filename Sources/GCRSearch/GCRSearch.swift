//
//  GCRSearch.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public class GCRSearch {

    public init() { }

    public func search(_ options: SearchOptions = .default, completion: @escaping (IndexResult?) -> Void) {
        // Build Search Body
        var queryItems: [URLQueryItem] = []
        queryItems.append(URLQueryItem(name: "suchart", value: "uneingeschr"))
        if options.court != .all {
            queryItems.append(URLQueryItem(name: "land", value: options.court.searchValue))
        }
        if let subCourt = options.court.subCourt {
            queryItems.append(URLQueryItem(name: "gericht", value: subCourt.searchValue))
        }
        if let from = options.from {
            let components = Calendar.current.dateComponents([.day, .month, .year], from: from)
            if let day = components.day, let month = components.month, let year = components.year {
                queryItems.append(URLQueryItem(name: "vt", value: "\(day)"))
                queryItems.append(URLQueryItem(name: "vm", value: "\(month)"))
                queryItems.append(URLQueryItem(name: "vj", value: "\(year)"))
            }
        }
        if let to = options.to {
            let components = Calendar.current.dateComponents([.day, .month, .year], from: to)
            if let day = components.day, let month = components.month, let year = components.year {
                queryItems.append(URLQueryItem(name: "bt", value: "\(day)"))
                queryItems.append(URLQueryItem(name: "bm", value: "\(month)"))
                queryItems.append(URLQueryItem(name: "bj", value: "\(year)"))
            }
        }
        queryItems.append(URLQueryItem(name: "rubrik", value: options.category?.searchValue ?? ""))
        if let docketNumber = options.docketNumber {
            queryItems.append(URLQueryItem(name: "az", value: docketNumber))
        }
        queryItems.append(URLQueryItem(name: "gegenstand", value: options.cause.searchValue))
        queryItems.append(URLQueryItem(name: "order", value: options.order.searchValue))

        var urlComponents = URLComponents()
        urlComponents.queryItems = queryItems

        // Build Request
        let baseURL = URL(string: "\(decodedBaseURL)/?aktion=suche")!
        let urlRequest = NSMutableURLRequest(url: baseURL)
        urlRequest.httpMethod = "POST"
        urlRequest.httpBody = urlComponents.percentEncodedQuery?.data(using: .utf8)
        // Headers
        urlRequest.addValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        // Fake User Agent 🕵️‍♂️
        urlRequest.addValue("Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0", forHTTPHeaderField: "User-Agent")

        URLSession.shared.dataTask(with: urlRequest as URLRequest) { (data, response, error) in
            if let data = data, let string = String(data: data, encoding: .utf8) {
                let rows = IndexParser().parse(content: string)
                completion(rows)
            } else {
                completion(nil)
            }
        }.resume()
    }

    public func detail(_ url: String, completion: @escaping (DetailResult?) -> Void) {
        // Build Request
        let baseURL = URL(string: "\(decodedBaseURL)/skripte/hrb.php?\(url)")!
        let urlRequest = NSMutableURLRequest(url: baseURL)
        urlRequest.httpMethod = "GET"

        URLSession.shared.dataTask(with: urlRequest as URLRequest) { (data, response, error) in
            if let data = data, let string = String(data: data, encoding: .utf8) {
                let result = DetailParser().parse(content: string)
                completion(result)
            } else {
                completion(nil)
            }
        }.resume()
    }

    public func crawl(_ options: SearchOptions = .default, completion: @escaping (CrawlResult?) -> Void) {
        search(options) { indexResult in
            guard let indexResult = indexResult else {
                completion(nil)
                return
            }
            DispatchQueue.global(qos: .default).async {
                var crawlResult = CrawlResult(indexResult: indexResult, rows: [])
                let group = DispatchGroup()
                for row in indexResult.rows {
                    group.wait()
                    group.enter()
                    self.detail(row.url) { detailResult in
                        crawlResult.rows.append(CrawlResult.CrawlRow(index: row, detail: detailResult))
                        group.leave()
                    }
                }
                group.wait()
                completion(crawlResult)
            }
        }
    }

    private var decodedBaseURL: String {
        let encodedBaseURL = "aHR0cHM6Ly93d3cuaGFuZGVsc3JlZ2lzdGVyYmVrYW5udG1hY2h1bmdlbi5kZQ=="
        return String(data: Data(base64Encoded: encodedBaseURL)!, encoding: .utf8)!
    }

}


public struct CrawlResult {

    public var indexResult: IndexResult
    public var rows: [CrawlRow]

    public struct CrawlRow {

        public var index: IndexRow
        public var detail: DetailResult?

    }

}
