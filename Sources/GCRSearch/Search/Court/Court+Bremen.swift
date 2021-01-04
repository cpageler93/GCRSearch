//
//  Court+Bremen.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Bremen: Courtable, CaseIterable {

        case bremen
        // Bremerhaven bis zum 31.12.2012

        public var title: String {
            switch self {
            case .bremen: return "Bremen"
            }
        }

        public var searchValue: String {
            switch self {
            case .bremen: return "H1101"
            }
        }

    }

}
