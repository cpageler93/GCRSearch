//
//  DetailParserTests.swift
//  GCRSearchTests
//
//  Created by Christoph Pageler on 03.01.21.
//


import XCTest
@testable import GCRSearch


class DetailParserTests: XCTestCase {


    func testExample() throws {
        let result = DetailParser().parse(content: DetailParserTests.content)

        let dfDateOfAnnoucement = DateFormatter()
        dfDateOfAnnoucement.dateFormat = "dd.MM.yyyy HH:mm"

        let dfDateOfEnrollment = DateFormatter()
        dfDateOfEnrollment.dateFormat = "dd.MM.yyyy"

        XCTAssertEqual(result.court, "Amtsgericht Oldenburg")
        XCTAssertEqual(result.category, "HRB")
        XCTAssertEqual(result.docketNumber, "216029")
        XCTAssertEqual(dfDateOfAnnoucement.string(from: result.dateOfAnnouncement ?? Date()), "03.12.2020 19:00")
        XCTAssertEqual(result.preContent, "In () gesetzte Angaben der Anschrift und des GeschÃ¤ftszweiges erfolgen ohne GewÃ¤hr:")
        XCTAssertEqual(result.cause, "Neueintragungen")
        XCTAssertEqual(dfDateOfEnrollment.string(from: result.dateOfEnrollment ?? Date()), "03.12.2020")
        XCTAssertEqual(result.content, "HRB 216029: Hair Suite UG (haftungsbeschrÃ¤nkt), Harpstedt, Im Bookhopsfeld 20, 27243 Harpstedt. Gesellschaft mit beschrÃ¤nkter Haftung. Gesellschaftsvertrag vom 12.11.2020. GeschÃ¤ftsanschrift: Im Bookhopsfeld 20, 27243 Harpstedt. Gegenstand: Betrieb von Friseursalons sowie alle damit im Zusammenhang stehenden TÃ¤tigkeiten. Stammkapital: 500,00 EUR. Allgemeine Vertretungsregelung: Ist nur ein GeschÃ¤ftsfÃ¼hrer bestellt, so vertritt er die Gesellschaft allein. Sind mehrere GeschÃ¤ftsfÃ¼hrer bestellt, so wird die Gesellschaft durch die GeschÃ¤ftsfÃ¼hrer gemeinsam vertreten. GeschÃ¤ftsfÃ¼hrer: Lomp, Wiebke, Harpstedt, *21.01.1977, mit der Befugnis, im Namen der Gesellschaft mit sich im eigenen Namen oder als Vertreter eines Dritten RechtsgeschÃ¤fte abzuschlieÃen.")
    }

}


extension DetailParserTests {

    static let content = #"""
    <HTML>\n\n<script for=\"document\" event=\"onkeypress()\" language=\"JScript\" type=\"text/jscript\">\n<!--\n {\n  if(window.event.shiftKey)\n   javascript:window.print();\n }\n//-->\n</script>\n<HEAD>\n<!--META http-equiv=\"content-type\" content=\"text/html; charset=ISO-8859-1\"-->\n<META http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\n\n<META NAME=\"ROBOTS\" CONTENT=\"NOINDEX, NOFOLLOW\">\n<META NAME=\"ROBOTS\" CONTENT=\"NOARCHIVE\">\n<TITLE>&Ouml;ffentliche Bekanntmachung RegisSTAR</TITLE>\n</HEAD>\n<BODY>\n<FONT FACE=\"Arial\"><P>\n<table><tr><td><nobr><U>Amtsgericht Oldenburg Aktenzeichen: HRB 216029 </U></nobr></td><td align=right>\n<nobr>Bekannt gemacht am: 03.12.2020 19:00&nbsp;Uhr</nobr>\n</td></tr>\n\n\n\n<tr><td colspan=2 ><br>In () gesetzte Angaben der Anschrift und des GeschÃ¤ftszweiges erfolgen ohne GewÃ¤hr:</td></tr>\n<tr><td colspan=2 ><br>Neueintragungen</td></tr>\n<tr><td colspan=2 ><br>03.12.2020</td></tr>\n<tr><td colspan=2 ><br></td></tr>\n<tr><td colspan=2 ><br>HRB 216029: Hair Suite UG (haftungsbeschrÃ¤nkt), Harpstedt, Im Bookhopsfeld 20, 27243 Harpstedt. Gesellschaft mit beschrÃ¤nkter Haftung. Gesellschaftsvertrag vom 12.11.2020. GeschÃ¤ftsanschrift: Im Bookhopsfeld 20, 27243 Harpstedt. Gegenstand: Betrieb von Friseursalons sowie alle damit im Zusammenhang stehenden TÃ¤tigkeiten. Stammkapital: 500,00 EUR. Allgemeine Vertretungsregelung: Ist nur ein GeschÃ¤ftsfÃ¼hrer bestellt, so vertritt er die Gesellschaft allein. Sind mehrere GeschÃ¤ftsfÃ¼hrer bestellt, so wird die Gesellschaft durch die GeschÃ¤ftsfÃ¼hrer gemeinsam vertreten. GeschÃ¤ftsfÃ¼hrer: Lomp, Wiebke, Harpstedt, *21.01.1977, mit der Befugnis, im Namen der Gesellschaft mit sich im eigenen Namen oder als Vertreter eines Dritten RechtsgeschÃ¤fte abzuschlieÃen.</td></tr>\n</table>\n</FONT></BODY></HTML>\n
    """#
}
