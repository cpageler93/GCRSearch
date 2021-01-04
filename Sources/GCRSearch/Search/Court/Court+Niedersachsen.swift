//
//  Court+Niedersachsen.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Niedersachsen: Courtable, CaseIterable {

        case aurich
        case braunschweig
        case goettingen
        case hannover
        case hildesheim
        case lueneburg
        case oldenburg
        case osnabrueck
        case stadthagen
        case tostedt
        case walsrode

        public var title: String {
            switch self {
            case .aurich: return "Aurich"
            case .braunschweig: return "Braunschweig"
            case .goettingen: return "Göttingen"
            case .hannover: return "Hannover"
            case .hildesheim: return "Hildesheim"
            case .lueneburg: return "Lüneburg"
            case .oldenburg: return "Oldenburg"
            case .osnabrueck: return "Osnabrück"
            case .stadthagen: return "Stadthagen"
            case .tostedt: return "Tostedt"
            case .walsrode: return "Walsrode"
            }
        }

        public var searchValue: String {
            switch self {
            case .aurich: return "P3101"
            case .braunschweig: return "P1103"
            case .goettingen: return "P2204"
            case .hannover: return "P2305"
            case .hildesheim: return "P2408"
            case .lueneburg: return "P2507"
            case .oldenburg: return "P3210"
            case .osnabrueck: return "P3313"
            case .stadthagen: return "P2106"
            case .tostedt: return "P2613"
            case .walsrode: return "P2716"
            }
        }

    }

}
