//
//  Court+Berlin.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Berlin: Courtable, CaseIterable {

        case charlottenburgBerlin

        public var title: String {
            switch self {
            case .charlottenburgBerlin: return "Charlottenburg (Berlin)"
            }
        }

        public var searchValue: String {
            switch self {
            case .charlottenburgBerlin: return "F1103"
            }
        }

    }

}
