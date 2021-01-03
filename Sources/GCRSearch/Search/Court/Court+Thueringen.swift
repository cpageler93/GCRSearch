//
//  Court+Thueringen.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Thueringen: Courtable {

        case altenburg
        case apolda
        case arnstadt
        case arnstadtZweigstelleIlmenau
        case badSalzungen
        case eisenach
        case erfurt
        case gera
        case gotha
        case greiz
        case heilbadHeiligenstadt
        case hildburghausen
        case jen
        case meiningen
        case muehlhausen
        case muehlhausenZweigstelleBadLangensalza
        case nordhausen
        case pößneck
        case pößneckZweigstelleBadLobenstein
        case rudolstadt
        case rudolstadtZweigstelleSaalfeld
        case soemmerda
        case sondershausen
        case sonneberg
        case stadtroda
        case suhl
        case weimar

        public var title: String {
            switch self {
            case .altenburg: return "Altenburg"
            case .apolda: return "Apolda"
            case .arnstadt: return "Arnstadt"
            case .arnstadtZweigstelleIlmenau: return "Arnstadt Zweigstelle Ilmenau"
            case .badSalzungen: return "Bad Salzungen"
            case .eisenach: return "Eisenach"
            case .erfurt: return "Erfurt"
            case .gera: return "Gera"
            case .gotha: return "Gotha"
            case .greiz: return "Greiz"
            case .heilbadHeiligenstadt: return "Heilbad Heiligenstadt"
            case .hildburghausen: return "Hildburghausen"
            case .jen: return "Jen"
            case .meiningen: return "Meiningen"
            case .muehlhausen: return "Mühlhausen"
            case .muehlhausenZweigstelleBadLangensalza: return "Mühlhausen Zweigstelle Bad Langensalza"
            case .nordhausen: return "Nordhausen"
            case .pößneck: return "Pößneck"
            case .pößneckZweigstelleBadLobenstein: return "Pößneck Zweigstelle Bad Lobenstein"
            case .rudolstadt: return "Rudolstadt"
            case .rudolstadtZweigstelleSaalfeld: return "Rudolstadt Zweigstelle Saalfeld"
            case .soemmerda: return "Sömmerda"
            case .sondershausen: return "Sondershausen"
            case .sonneberg: return "Sonneberg"
            case .stadtroda: return "Stadtroda"
            case .suhl: return "Suhl"
            case .weimar: return "Weimar"
            }
        }

        public var searchValue: String {
            switch self {
            case .altenburg: return "Y1201"
            case .apolda: return "Y1101"
            case .arnstadt: return "Y1102"
            case .arnstadtZweigstelleIlmenau: return "Y1303"
            case .badSalzungen: return "Y1301"
            case .eisenach: return "Y1105"
            case .erfurt: return "Y1106"
            case .gera: return "Y1203"
            case .gotha: return "Y1108"
            case .greiz: return "Y1205"
            case .heilbadHeiligenstadt: return "Y1109"
            case .hildburghausen: return "Y1302"
            case .jen: return "Y1206V"
            case .meiningen: return "Y1304"
            case .muehlhausen: return "Y1110"
            case .muehlhausenZweigstelleBadLangensalza: return "Y1104"
            case .nordhausen: return "Y1111"
            case .pößneck: return "Y1209"
            case .pößneckZweigstelleBadLobenstein: return "Y1208"
            case .rudolstadt: return "Y1210"
            case .rudolstadtZweigstelleSaalfeld: return "Y1211"
            case .soemmerda: return "Y1112"
            case .sondershausen: return "Y1113"
            case .sonneberg: return "Y1307"
            case .stadtroda: return "Y1214"
            case .suhl: return "Y1308"
            case .weimar: return "Y1114"
            }
        }

    }

}
