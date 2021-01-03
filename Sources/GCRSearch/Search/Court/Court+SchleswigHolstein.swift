//
//  Court+SchleswigHolstein.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum SchleswigHolstein: Courtable {

        case flensburg
        case kiel
        case luebeck
        case pinneberg

        public var title: String {
            switch self {
            case .flensburg: return "Flensburg"
            case .kiel: return "Kiel"
            case .luebeck: return "Lübeck"
            case .pinneberg: return "Pinneberg"
            }
        }

        public var searchValue: String {
            switch self {
            case .flensburg: return "X1112"
            case .kiel: return "X1517"
            case .luebeck: return "X1721"
            case .pinneberg: return "X1321"
            }
        }

    }

}
