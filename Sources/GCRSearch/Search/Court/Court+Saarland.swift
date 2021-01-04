//
//  Court+Saarland.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Saarland: Courtable, CaseIterable {

        case homburg
        case lebach
        case merzig
        case neunkirchen
        case ottweiler
        case saarbruecken
        case saarlouis
        case stIngbert
        case stWendel
        case voelklingen

        public var title: String {
            switch self {
            case .homburg: return "Homburg"
            case .lebach: return "Lebach"
            case .merzig: return "Merzig"
            case .neunkirchen: return "Neunkirchen"
            case .ottweiler: return "Ottweiler"
            case .saarbruecken: return "Saarbrücken"
            case .saarlouis: return "Saarlouis"
            case .stIngbert: return "St. Ingbert"
            case .stWendel: return "St. Wendel"
            case .voelklingen: return "Völklingen"
            }
        }

        public var searchValue: String {
            switch self {
            case .homburg: return "V1102"
            case .lebach: return "V1103"
            case .merzig: return "V1104"
            case .neunkirchen: return "V1105"
            case .ottweiler: return "V1107"
            case .saarbruecken: return "V1109"
            case .saarlouis: return "V1110"
            case .stIngbert: return "V1111"
            case .stWendel: return "V1112"
            case .voelklingen: return "V1115"
            }
        }

    }

}
