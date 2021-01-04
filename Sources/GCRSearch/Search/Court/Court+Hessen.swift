//
//  Court+Hessen.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Hessen: Courtable, CaseIterable {

        case badHersfeld
        case badHomburg
        case darmstadt
        case eschwege
        case frankfurtAmMain
        case friedberg
        case fritzlar
        case fulda
        case gießen
        case hanau
        case kassel
        case koenigstein
        case korbach
        case limburgADLahn
        case marburg
        case offenbachAmMain
        case wetzlar
        case wiesbaden

        public var title: String {
            switch self {
            case .badHersfeld: return "Bad Hersfeld"
            case .badHomburg: return "Bad Homburg"
            case .darmstadt: return "Darmstadt"
            case .eschwege: return "Eschwege"
            case .frankfurtAmMain: return "Frankfurt am Main"
            case .friedberg: return "Friedberg"
            case .fritzlar: return "Fritzlar"
            case .fulda: return "Fulda"
            case .gießen: return "Gießen"
            case .hanau: return "Hanau"
            case .kassel: return "Kassel"
            case .koenigstein: return "Königstein"
            case .korbach: return "Korbach"
            case .limburgADLahn: return "Limburg a. d. Lahn"
            case .marburg: return "Marburg"
            case .offenbachAmMain: return "Offenbach am Main"
            case .wetzlar: return "Wetzlar"
            case .wiesbaden: return "Wiesbaden"
            }
        }

        public var searchValue: String {
            switch self {
            case .badHersfeld: return "M1305"
            case .badHomburg: return "M1202"
            case .darmstadt: return "M1103"
            case .eschwege: return "M1602"
            case .frankfurtAmMain: return "M1201"
            case .friedberg: return "M1405"
            case .fritzlar: return "M1603"
            case .fulda: return "M1301"
            case .gießen: return "M1406"
            case .hanau: return "M1502"
            case .kassel: return "M1607"
            case .koenigstein: return "M1203"
            case .korbach: return "M1608"
            case .limburgADLahn: return "M1706"
            case .marburg: return "M1809"
            case .offenbachAmMain: return "M1114"
            case .wetzlar: return "M1710"
            case .wiesbaden: return "M1906"
            }
        }

    }

}
