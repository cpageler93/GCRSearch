//
//  Court+Bayern.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum Bayern: Courtable {

        case amberg
        case ansbach
        case aschaffenburg
        case augsburg
        case bamberg
        case bayreuth
        case coburg
        case deggendorf
        case fürth
        case hof
        case ingolstadt
        case kempten
        case landshut
        case memmingen
        case münchen
        case nürnberg
        case passau
        case regensburg
        case schweinfurt
        case straubing
        case traunstein
        case weidenIDOPfWeiden
        case würzburg

        public var title: String {
            switch self {
            case .amberg: return "Amberg"
            case .ansbach: return "Ansbach"
            case .aschaffenburg: return "Aschaffenburg"
            case .augsburg: return "Augsburg"
            case .bamberg: return "Bamberg"
            case .bayreuth: return "Bayreuth"
            case .coburg: return "Coburg"
            case .deggendorf: return "Deggendorf"
            case .fürth: return "Fürth"
            case .hof: return "Hof"
            case .ingolstadt: return "Ingolstadt"
            case .kempten : return "Kempten "
            case .landshut: return "Landshut"
            case .memmingen: return "Memmingen"
            case .münchen: return "München"
            case .nürnberg: return "Nürnberg"
            case .passau: return "Passau"
            case .regensburg: return "Regensburg"
            case .schweinfurt: return "Schweinfurt"
            case .straubing: return "Straubing"
            case .traunstein: return "Traunstein"
            case .weidenIDOPfWeiden: return "Weiden i. d. OPf (Weiden)"
            case .würzburg: return "Würzburg"
            }
        }

        public var searchValue: String {
            switch self {
            case .amberg: return "D3101V"
            case .ansbach: return "D3201V"
            case .aschaffenburg: return "D4102V"
            case .augsburg: return "D2102V"
            case .bamberg: return "D4201V"
            case .bayreuth: return "D4301V"
            case .coburg: return "D4401V"
            case .deggendorf: return "D2201V"
            case .fürth: return "D3304V"
            case .hof: return "D4501V"
            case .ingolstadt: return "D5701V"
            case .kempten : return "D2304V"
            case .landshut: return "D2404V"
            case .memmingen: return "D2505V"
            case .münchen: return "D2601V"
            case .nürnberg: return "D3310V"
            case .passau: return "D2803V"
            case .regensburg: return "D3410V"
            case .schweinfurt: return "D4608V"
            case .straubing: return "D3413V"
            case .traunstein: return "D2910V"
            case .weidenIDOPfWeiden: return "D3508V"
            case .würzburg: return "D4708V"
            }
        }

    }

}

