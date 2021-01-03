//
//  Court.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


public enum Court: Equatable {

    case all

    case badenWuerttemberg(_ court: BadenWuerttemberg)
    case bayern(_ court: Bayern)
    case berlin(_ court: Berlin)
    case brandenburg(_ court: Brandenburg)
    case bremen(_ court: Bremen)
    case hamburg(_ court: Hamburg)
    case hessen(_ court: Hessen)
    case mecklenburgVorpommern(_ court: MecklenburgVorpommern)
    case niedersachsen(_ court: Niedersachsen)
    case nordrheinWestfalen(_ court: NordrheinWestfalen)
    case rheinlandPfalz(_ court: RheinlandPfalz)
    case saarland(_ court: Saarland)
    case sachsen(_ court: Sachsen)
    case sachsenAnhalt(_ court: SachsenAnhalt)
    case schleswigHolstein(_ court: SchleswigHolstein)
    case thueringen(_ court: Thueringen)

    var subCourt: Courtable? {
        switch self {
        case .all: return nil
        case .badenWuerttemberg(let court): return court
        case .bayern(let court): return court
        case .berlin(let court): return court
        case .brandenburg(let court): return court
        case .bremen(let court): return court
        case .hamburg(let court): return court
        case .hessen(let court): return court
        case .mecklenburgVorpommern(let court): return court
        case .niedersachsen(let court): return court
        case .nordrheinWestfalen(let court): return court
        case .rheinlandPfalz(let court): return court
        case .saarland(let court): return court
        case .sachsen(let court): return court
        case .sachsenAnhalt(let court): return court
        case .schleswigHolstein(let court): return court
        case .thueringen(let court): return court
        }
    }

}

public protocol Courtable {

    var title: String { get }
    var searchValue: String { get }

}


extension Court: Courtable {

    public var title: String {
        switch self {
        case .all: return "Alle"

        case .badenWuerttemberg: return "Baden-Württemberg"
        case .bayern: return "Bayern"
        case .berlin: return "Berlin"
        case .brandenburg: return "Brandenburg"
        case .bremen: return "Bremen"
        case .hamburg: return "Hamburg"
        case .hessen: return "Hessen"
        case .mecklenburgVorpommern: return "Mecklenburg-Vorpommern"
        case .niedersachsen: return "Niedersachsen"
        case .nordrheinWestfalen: return "Nordrhein-Westfalen"
        case .rheinlandPfalz: return "Rheinland-Pfalz"
        case .saarland: return "Saarland"
        case .sachsen: return "Sachsen"
        case .sachsenAnhalt: return "Sachsen-Anhalt"
        case .schleswigHolstein: return "Schleswig-Holstein"
        case .thueringen: return "Thüringen"
        }
    }

    public var searchValue: String {
        switch self {
        case .all: return ""
        case .badenWuerttemberg: return  "bw"
        case .bayern: return "by"
        case .berlin: return "be"
        case .brandenburg: return "br"
        case .bremen: return "hb"
        case .hamburg: return "hh"
        case .hessen: return "he"
        case .mecklenburgVorpommern: return "mv"
        case .niedersachsen: return "ni"
        case .nordrheinWestfalen: return "nw"
        case .rheinlandPfalz: return "rp"
        case .saarland: return "sl"
        case .sachsen: return "sn"
        case .sachsenAnhalt: return "st"
        case .schleswigHolstein: return "sh"
        case .thueringen: return "th"
        }
    }

}
