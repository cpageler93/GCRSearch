//
//  SearchOptions.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 02.01.21.
//


import Foundation


public struct SearchOptions {

    /// Bundesland / Gericht
    public var court: Court

    /// Von
    public var from: Date?

    /// Bis
    public var to: Date?

    /// Rubrik
    public var category: Category?

    /// Aktenzeichen
    public var docketNumber: String?

    /// Gegenstand
    public var cause: Cause

    /// Sortierung
    public var order: Order

    public init(court: Court, from: Date?, to: Date?, category: Category?,
                docketNumber: String?, cause: Cause, order: Order) {
        self.court = court
        self.from = from
        self.to = to
        self.category = category
        self.docketNumber = docketNumber
        self.cause = cause
        self.order = order
    }

    public static var `default`: SearchOptions {
        SearchOptions(court: .all, from: nil, to: nil, category: nil,
                      docketNumber: nil, cause: .all, order: .dateOfAnnouncement)
    }

}

