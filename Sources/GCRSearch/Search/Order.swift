//
//  Order.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 02.01.21.
//


import Foundation


public enum Order {

    case dateOfAnnouncement
    case dateOfEnrollment
    case companyOrName
    case docketNumber

    var title: String {
        switch self {
        case .dateOfAnnouncement: return "Datum der Bekanntmachung"
        case .dateOfEnrollment: return "Datum der Eintragung/Anordnung"
        case .companyOrName: return "Firma/Name"
        case .docketNumber: return "Aktenzeichen"
        }
    }

    var searchValue: String {
        switch self {
        case .dateOfAnnouncement: return "4"
        case .dateOfEnrollment: return "3"
        case .companyOrName: return "2"
        case .docketNumber: return "1"
        }
    }

}
