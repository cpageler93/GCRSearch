//
//  Cause.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 02.01.21.
//


import Foundation


public enum Cause {

    case all
    case newEnrollments
    case changes
    case deletionFromDepartment
    case deletionAnnouncements
    case deletions
    case revisions
    case proceedingsWithoutListing


    public var searchValue: String {
        switch self {
        case .all: return "0"
        case .newEnrollments: return "1"
        case .changes: return "2"
        case .deletionFromDepartment: return "3"
        case .deletionAnnouncements: return "4"
        case .deletions: return "5"
        case .revisions: return "6"
        case .proceedingsWithoutListing: return "7"
        }
    }

    public var title: String {
        switch self {
        case .all: return "Alle Bekanntmachungen"
        case .newEnrollments: return "Neueintragungen"
        case .changes: return "Veränderungen"
        case .deletionFromDepartment: return "Löschungen von Amts wegen"
        case .deletionAnnouncements: return "Löschungsankündigungen"
        case .deletions: return "Löschungen"
        case .revisions: return "Berichtigungen"
        case .proceedingsWithoutListing: return "Vorgänge ohne Eintragung"
        }
    }


}
