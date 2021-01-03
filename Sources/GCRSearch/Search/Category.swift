//
//  Category.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 02.01.21.
//


import Foundation


/// Rubrik
public enum Category {

    case hra
    case hrb
    case gnr
    case vr
    case pr
    case ar

    var searchValue: String {
        switch self {
        case .hra: return "A"
        case .hrb: return "B"
        case .gnr: return "G"
        case .vr: return "V"
        case .pr: return "P"
        case .ar: return "AR"
        }
    }

}
