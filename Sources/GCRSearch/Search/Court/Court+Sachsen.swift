//
//  Court+Sachsen.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Sachsen: Courtable {

        case annaberg
        case aue
        case auerbach
        case bautzen
        case borna
        case chemnitz
        case dippoldiswalde
        case doebeln
        case dresden
        case eilenburg
        case freiberg
        case goerlitz
        case grimma
        case hainichen
        case hohensteinErnstthal
        case hoyerswerda
        case kamenz
        case leipzig
        case loebau
        case marienberg
        case meissen
        case oschatz
        case pirna
        case plauen
        case riesa
        case stollberg
        case torgau
        case weisswasser
        case zittau
        case zwickau

        public var title: String {
            switch self {
            case .annaberg: return "Annaberg"
            case .aue: return "Aue"
            case .auerbach: return "Auerbach"
            case .bautzen: return "Bautzen"
            case .borna: return "Borna"
            case .chemnitz: return "Chemnitz"
            case .dippoldiswalde: return "Dippoldiswalde"
            case .doebeln: return "Döbeln"
            case .dresden: return "Dresden"
            case .eilenburg: return "Eilenburg"
            case .freiberg: return "Freiberg"
            case .goerlitz: return "Görlitz"
            case .grimma: return "Grimma"
            case .hainichen: return "Hainichen"
            case .hohensteinErnstthal: return "Hohenstein-Ernstthal"
            case .hoyerswerda: return "Hoyerswerda"
            case .kamenz: return "Kamenz"
            case .leipzig: return "Leipzig"
            case .loebau: return "Löbau"
            case .marienberg: return "Marienberg"
            case .meissen: return "Meißen"
            case .oschatz: return "Oschatz"
            case .pirna: return "Pirna"
            case .plauen: return "Plauen"
            case .riesa: return "Riesa"
            case .stollberg: return "Stollberg"
            case .torgau: return "Torgau"
            case .weisswasser: return "Weißwasser"
            case .zittau: return "Zittau"
            case .zwickau: return "Zwickau"
            }
        }

        public var searchValue: String {
            switch self {
            case .annaberg: return "U1201"
            case .aue: return "U1202"
            case .auerbach: return "U1203"
            case .bautzen: return "U1101"
            case .borna: return "U1302"
            case .chemnitz: return "U1206"
            case .dippoldiswalde: return "U1103"
            case .doebeln: return "U1304"
            case .dresden: return "U1104"
            case .eilenburg: return "U1305"
            case .freiberg: return "U1208"
            case .goerlitz: return "U1107"
            case .grimma: return "U1306"
            case .hainichen: return "U1210"
            case .hohensteinErnstthal: return "U1211"
            case .hoyerswerda: return "U1109"
            case .kamenz: return "U1110"
            case .leipzig: return "U1308"
            case .loebau: return "U1111"
            case .marienberg: return "U1213"
            case .meissen: return "U1112"
            case .oschatz: return "U1309"
            case .pirna: return "U1114"
            case .plauen: return "U1215"
            case .riesa: return "U1115"
            case .stollberg: return "U1219"
            case .torgau: return "U1310"
            case .weisswasser: return "U1117"
            case .zittau: return "U1118"
            case .zwickau: return "U1222"
            }
        }

    }

}
