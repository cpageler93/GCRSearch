//
//  Court+RheinlandPfalz.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum RheinlandPfalz: Courtable, CaseIterable {

        case badKreuznach
        case kaiserslautern
        case koblenz
        case landau
        case ludwigshafenARheinLudwigshafen
        case mainz
        case montabaur
        case wittlich
        case zweibruecken

        public var title: String {
            switch self {
            case .badKreuznach: return "Bad Kreuznach"
            case .kaiserslautern: return "Kaiserslautern"
            case .koblenz: return "Koblenz"
            case .landau: return "Landau"
            case .ludwigshafenARheinLudwigshafen: return "Ludwigshafen a.Rhein (Ludwigshafen)"
            case .mainz: return "Mainz"
            case .montabaur: return "Montabaur"
            case .wittlich: return "Wittlich"
            case .zweibruecken: return "Zweibrücken"
            }
        }

        public var searchValue: String {
            switch self {
            case .badKreuznach: return "T2101V"
            case .kaiserslautern: return "T3201V"
            case .koblenz: return "T2210V"
            case .landau: return "T3304V"
            case .ludwigshafenARheinLudwigshafen: return "T3104V"
            case .mainz: return "T2304V"
            case .montabaur: return "T2214V"
            case .wittlich: return "T2408V"
            case .zweibruecken: return "T3403V"
            }
        }

    }

}
