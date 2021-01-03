//
//  GCRSearchTests.swift
//  GCRSearchTests
//
//  Created by Christoph Pageler on 02.01.21.
//


import XCTest
@testable import GCRSearch

final class GCRSearchTests: XCTestCase {

    func testSearch() {
        let searchExpectation = expectation(description: "search")
        let searchOptions = SearchOptions(court: .niedersachsen(.oldenburg), from: nil, to: nil, category: nil,
                                          docketNumber: nil, cause: .newEnrollments, order: .dateOfAnnouncement)
        GCRSearch().search(searchOptions) { result in
            XCTAssertEqual(result?.expectedRowCount, 100)
            XCTAssertEqual(result?.rows.count, 100)
            searchExpectation.fulfill()
        }
        waitForExpectations(timeout: 60, handler: nil)
    }

    func testSearchSchwaebischGmuend() {
        let searchExpectation = expectation(description: "search")
        let searchOptions = SearchOptions(court: .all, from: nil, to: nil, category: nil,
                                          docketNumber: nil, cause: .all, order: .dateOfAnnouncement)
        GCRSearch().search(searchOptions) { result in
            XCTAssertEqual(result?.expectedRowCount, 100)
            XCTAssertEqual(result?.rows.count, 100)
            searchExpectation.fulfill()
        }
        waitForExpectations(timeout: 60, handler: nil)
    }

    func testDetail() {
        let searchExpectation = expectation(description: "detail")
        GCRSearch().detail("rb_id=603567&land_abk=ni") { result in
            XCTAssertNotNil(result?.content)
            searchExpectation.fulfill()
        }
        waitForExpectations(timeout: 60, handler: nil)
    }

    func testCrawl() {
        let search = GCRSearch()
        let searchOptions = SearchOptions(court: .all, from: nil, to: nil, category: nil,
                                          docketNumber: nil, cause: .all, order: .dateOfAnnouncement)
        let crawlExpectation = expectation(description: "crawl")
        search.crawl(searchOptions) { crawlResult in
            XCTAssertEqual(crawlResult?.indexResult.rows.count, crawlResult?.rows.count)
            XCTAssertEqual(crawlResult?.rows.count, 100)
            for crawlRow in crawlResult?.rows ?? [] {
                XCTAssertNotNil(crawlRow.detail?.court)
                XCTAssertNotNil(crawlRow.detail?.category)
                XCTAssertNotNil(crawlRow.detail?.docketNumber)
                XCTAssertNotNil(crawlRow.detail?.dateOfAnnouncement)
                XCTAssertNotNil(crawlRow.detail?.preContent)
                XCTAssertNotNil(crawlRow.detail?.cause)
                XCTAssertNotNil(crawlRow.detail?.dateOfEnrollment)
                XCTAssertNotNil(crawlRow.detail?.content)
            }
            crawlExpectation.fulfill()
        }
        waitForExpectations(timeout: 60, handler: nil)
    }

    static var allTests = [
        ("testSearch", testSearch),
        ("testDetail", testDetail),
    ]
    
}
