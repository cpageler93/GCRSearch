//
//  CourtTests.swift
//  GCRSearchTests
//
//  Created by Christoph Pageler on 03.01.21.
//


import XCTest
@testable import GCRSearch


class CourtTests: XCTestCase {

    func testAllCases() throws {
        let all = Court.allCases

        XCTAssertTrue(all.contains(.badenWuerttemberg(.backnang)))
        XCTAssertTrue(all.contains(.niedersachsen(.oldenburg)))
        XCTAssertTrue(all.contains(.berlin(.charlottenburgBerlin)))
        XCTAssertTrue(all.contains(.all))
    }

    func testCourtCodable() throws {
        try XCTAssertEqual(String(data: JSONEncoder().encode(Court.all), encoding: .utf8), "\"\"")
        try XCTAssertEqual(String(data: JSONEncoder().encode(Court.niedersachsen(.oldenburg)), encoding: .utf8), "\"ni:P3210\"")

        try XCTAssertEqual(JSONDecoder().decode(Court.self, from: "\"\"".data(using: .utf8)!), Court.all)
        try XCTAssertEqual(JSONDecoder().decode(Court.self, from: "\"ni:P3210\"".data(using: .utf8)!), Court.niedersachsen(.oldenburg))

        XCTAssertThrowsError(try JSONDecoder().decode(Court.self, from: "\"ni:invalid\"".data(using: .utf8)!))
        XCTAssertThrowsError(try JSONDecoder().decode(Court.self, from: "\"niedersachsen\"".data(using: .utf8)!))
        XCTAssertThrowsError(try JSONDecoder().decode(Court.self, from: "\"foo\"".data(using: .utf8)!))
    }

    func testCourtFromString() throws {
        XCTAssertEqual(Court(string: ""), Court.all)
        XCTAssertEqual(Court(string: "ni:P3210"), Court.niedersachsen(.oldenburg))
        XCTAssertNil(Court(string: "foobar"))
    }

    func testCourtFullTitle() throws {
        XCTAssertEqual(Court.niedersachsen(.oldenburg).fullTitle, "Niedersachsen - Oldenburg")
    }

}
