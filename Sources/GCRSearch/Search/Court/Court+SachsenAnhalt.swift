//
//  Court+SachsenAnhalt.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum SachsenAnhalt: Courtable {

        case stendal

        public var title: String {
            switch self {
            case .stendal: return "Stendal"
            }
        }

        public var searchValue: String {
            switch self {
            case .stendal: return "W1215"
            }
        }

    }

}
