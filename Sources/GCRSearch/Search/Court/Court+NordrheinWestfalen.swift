//
//  Court+NordrheinWestfalen.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum NordrheinWestfalen: Courtable {

        case aachen
        case arnsberg
        case badOeynhausen
        case bielefeld
        case bochum
        case bonn
        case coesfeld
        case delbrück
        case dortmund
        case duisburg
        case dueren
        case duesseldorf
        case essen
        case gelsenkirchen
        case guetersloh
        case hagen
        case hamm
        case hattingen
        case iserlohn
        case kleve
        case koeln
        case krefeld
        case lemgo
        case marl
        case moenchengladbach
        case muenster
        case nettetal
        case neuss
        case paderborn
        case recklinghausen
        case rheine
        case siegburg
        case siegen
        case steinfurt
        case wuppertal

        public var title: String {
            switch self {
            case .aachen: return "Aachen"
            case .arnsberg: return "Arnsberg"
            case .badOeynhausen: return "Bad Oeynhausen"
            case .bielefeld: return "Bielefeld"
            case .bochum: return "Bochum"
            case .bonn: return "Bonn"
            case .coesfeld: return "Coesfeld"
            case .delbrück: return "Delbrück"
            case .dortmund: return "Dortmund"
            case .duisburg: return "Duisburg"
            case .dueren: return "Düren"
            case .duesseldorf: return "Düsseldorf"
            case .essen: return "Essen"
            case .gelsenkirchen: return "Gelsenkirchen"
            case .guetersloh: return "Gütersloh"
            case .hagen: return "Hagen"
            case .hamm: return "Hamm"
            case .hattingen: return "Hattingen"
            case .iserlohn: return "Iserlohn"
            case .kleve: return "Kleve"
            case .koeln: return "Köln"
            case .krefeld: return "Krefeld"
            case .lemgo: return "Lemgo"
            case .marl: return "Marl"
            case .moenchengladbach: return "Moenchengladbach"
            case .muenster: return "Münster"
            case .nettetal: return "Nettetal"
            case .neuss: return "Neuss"
            case .paderborn: return "Paderborn"
            case .recklinghausen: return "Recklinghausen"
            case .rheine: return "Rheine"
            case .siegburg: return "Siegburg"
            case .siegen: return "Siegen"
            case .steinfurt: return "Steinfurt"
            case .wuppertal: return "Wuppertal"
            }
        }

        public var searchValue: String {
            switch self {
            case .aachen: return "R3101"
            case .arnsberg: return "R1901"
            case .badOeynhausen: return "R2108"
            case .bielefeld: return "R2101"
            case .bochum: return "R2201"
            case .bonn: return "R3201"
            case .coesfeld: return "R2707"
            case .delbrück: return "R2804"
            case .dortmund: return "R2402"
            case .duisburg: return "R1202"
            case .dueren: return "R3103"
            case .duesseldorf: return "R1101"
            case .essen: return "R2503"
            case .gelsenkirchen: return "R2507"
            case .guetersloh: return "R2103"
            case .hagen: return "R2602"
            case .hamm: return "R2404"
            case .hattingen: return "R2510"
            case .iserlohn: return "R2604"
            case .kleve: return "R1304"
            case .koeln: return "R3306"
            case .krefeld: return "R1402"
            case .lemgo: return "R2307"
            case .marl: return "R2511"
            case .moenchengladbach: return "R1504"
            case .muenster: return "R2713"
            case .nettetal: return "R1404"
            case .neuss: return "R1102"
            case .paderborn: return "R2809"
            case .recklinghausen: return "R2204"
            case .rheine: return "R2715"
            case .siegburg: return "R3208"
            case .siegen: return "R2909"
            case .steinfurt: return "R2706"
            case .wuppertal: return "R1608"
            }
        }

    }

}
