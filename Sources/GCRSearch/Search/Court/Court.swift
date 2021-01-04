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

    public var subCourt: Courtable? {
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


extension Court: CaseIterable {

    public static var allCases: [Court] {
        let courtsByFederalState = [
            [.all],
            BadenWuerttemberg.allCases.map { Court.badenWuerttemberg($0) },
            Bayern.allCases.map { Court.bayern($0) },
            Berlin.allCases.map { Court.berlin($0) },
            Brandenburg.allCases.map { Court.brandenburg($0) },
            Bremen.allCases.map { Court.bremen($0) },
            Hamburg.allCases.map { Court.hamburg($0) },
            Hessen.allCases.map { Court.hessen($0) },
            MecklenburgVorpommern.allCases.map { Court.mecklenburgVorpommern($0) },
            Niedersachsen.allCases.map { Court.niedersachsen($0) },
            NordrheinWestfalen.allCases.map { Court.nordrheinWestfalen($0) },
            RheinlandPfalz.allCases.map { Court.rheinlandPfalz($0) },
            Saarland.allCases.map { Court.saarland($0) },
            Sachsen.allCases.map { Court.sachsen($0) },
            SachsenAnhalt.allCases.map { Court.sachsenAnhalt($0) },
            SchleswigHolstein.allCases.map { Court.schleswigHolstein($0) },
            Thueringen.allCases.map { Court.thueringen($0) },
        ]
        return courtsByFederalState.reduce([], +)
    }

}


extension Court: Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let stringDescription = try container.decode(String.self)

        guard let court = Court.fromString(stringDescription) else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "invalid search value")
        }
        self = court
    }

    public static func fromString(_ string: String) -> Court? {
        Court.allCases.first(where: { $0.description == string })
    }

    public init?(string: String) {
        guard let court = Court.fromString(string) else { return nil }

        self = court
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(description)
    }

}


extension Court: CustomStringConvertible {

    public var description: String {
        [searchValue, subCourt?.searchValue].compactMap({ $0 }).joined(separator: ":")
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
