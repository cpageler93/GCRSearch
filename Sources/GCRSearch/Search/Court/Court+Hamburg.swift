//
//  Court+Hamburg.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Hamburg: Courtable, CaseIterable {

        case hamburg

        public var title: String {
            switch self {
            case .hamburg: return "Hamburg"
            }
        }

        public var searchValue: String {
            switch self {
            case .hamburg: return "K1101R"
            }
        }

    }

}
