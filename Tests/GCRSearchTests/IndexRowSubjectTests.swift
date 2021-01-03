//
//  IndexRowSubjectTests.swift
//  GCRSearchTests
//
//  Created by Christoph Pageler on 03.01.21.
//


import XCTest
@testable import GCRSearch

class IndexRowSubjectTests: XCTestCase {

    func testSubjectWithoutCommaInName() throws {
        let subject = IndexRow.Subject(string: "DCO Digitaldruck Centrum Oldenburg GmbH, Oldenburg, HRB 5398")
        XCTAssertEqual(subject.name, "DCO Digitaldruck Centrum Oldenburg GmbH")
        XCTAssertEqual(subject.location, "Oldenburg")
        XCTAssertEqual(subject.category, "HRB")
        XCTAssertEqual(subject.docketNumber, "5398")
    }

    func testSubjectWithCommaInName() throws {
        let subject = IndexRow.Subject(string: "Füllstoffe Beißwenger, Inhaber Dietmar Beißwenger e.K., Schwäbisch Hall, HRA 73743")
        XCTAssertEqual(subject.name, "Füllstoffe Beißwenger, Inhaber Dietmar Beißwenger e.K.")
        XCTAssertEqual(subject.location, "Schwäbisch Hall")
        XCTAssertEqual(subject.category, "HRA")
        XCTAssertEqual(subject.docketNumber, "73743")
    }

}
