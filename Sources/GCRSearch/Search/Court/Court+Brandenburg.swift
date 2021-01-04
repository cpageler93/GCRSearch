//
//  Court+Brandenburg.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Brandenburg: Courtable, CaseIterable {

        case cottbus
        case frankfurtOder
        case neuruppin
        case potsdam

        public var title: String {
            switch self {
            case .cottbus: return "Cottbus"
            case .frankfurtOder: return "Frankfurt/Oder"
            case .neuruppin: return "Neuruppin"
            case .potsdam: return "Potsdam"
            }
        }

        public var searchValue: String {
            switch self {
            case .cottbus: return "G1103"
            case .frankfurtOder: return "G1207"
            case .neuruppin: return "G1309"
            case .potsdam: return "G1312"
            }
        }

    }

}
