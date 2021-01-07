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


    func testSubjectWithStringAfterDocketNumber() throws {
        func extractInfos(_ string: String) -> (String?, String?, String?) {
            let subject = IndexRow.Subject(string: string)
            return (subject.category, subject.docketNumber, subject.docketNumberAppendix)
        }
        let test1 = extractInfos("Nordseekerl UG (haftungsbeschränkt), Albersdorf, HRB 15542 PI")
        XCTAssertEqual(test1.0, "HRB")
        XCTAssertEqual(test1.1, "15542")
        XCTAssertEqual(test1.2, "PI")

        let test2 = extractInfos("KMT Inhaber Oliver Krum e.K., Almdorf, HRA 10236 FL")
        XCTAssertEqual(test2.0, "HRA")
        XCTAssertEqual(test2.1, "10236")
        XCTAssertEqual(test2.2, "FL")

        let test3 = extractInfos("VDS GmbH, Altenkrempe OT Sibstin, HRB 20664 HL")
        XCTAssertEqual(test3.0, "HRB")
        XCTAssertEqual(test3.1, "20664")
        XCTAssertEqual(test3.2, "HL")

        let test4 = extractInfos("Saliho HAPPY HORSES & HUMANS e.V., Altenmarkt a.d.Alz, VR 202248")
        XCTAssertEqual(test4.0, "VR")
        XCTAssertEqual(test4.1, "202248")
        XCTAssertNil(test4.2)

        let test5 = extractInfos("Dingfelder + Kern GmbH & Co. KG, Ammersbek, HRA 9927 HL")
        XCTAssertEqual(test5.0, "HRA")
        XCTAssertEqual(test5.1, "9927")
        XCTAssertEqual(test5.2, "HL")

        let test6 = extractInfos("Hausservice Lehmann Beteiligungs GmbH, Bad Belzig, HRB 34711 P")
        XCTAssertEqual(test6.0, "HRB")
        XCTAssertEqual(test6.1, "34711")
        XCTAssertEqual(test6.2, "P")
    }

}
