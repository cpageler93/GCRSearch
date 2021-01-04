//
//  Court+MecklenburgVorpommern.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum MecklenburgVorpommern: Courtable, CaseIterable {

        case anklam
        case badDoberan
        case bergenAufRuegen
        case demmin
        case greifswald
        case grevesmühlen
        case guestrow
        case hagenow
        case ludwigslust
        case neubrandenburg
        case neustrelitz
        case parchim
        case pasewalk
        case ribnitzDamgarten
        case rostock
        case schwerin
        case stralsund
        case ueckermünde
        case warenMueritz
        case wismar
        case wolgast

        public var title: String {
            switch self {
            case .anklam: return "Anklam"
            case .badDoberan: return "Bad Doberan"
            case .bergenAufRuegen: return "Bergen auf Rügen"
            case .demmin: return "Demmin"
            case .greifswald: return "Greifswald"
            case .grevesmühlen: return "Grevesmühlen"
            case .guestrow: return "Güstrow"
            case .hagenow: return "Hagenow"
            case .ludwigslust: return "Ludwigslust"
            case .neubrandenburg: return "Neubrandenburg"
            case .neustrelitz: return "Neustrelitz"
            case .parchim: return "Parchim"
            case .pasewalk: return "Pasewalk"
            case .ribnitzDamgarten: return "Ribnitz-Damgarten"
            case .rostock: return "Rostock"
            case .schwerin: return "Schwerin"
            case .stralsund: return "Stralsund"
            case .ueckermünde: return "Ueckermünde"
            case .warenMueritz: return "Waren (Müritz)"
            case .wismar: return "Wismar"
            case .wolgast: return "Wolgast"
            }
        }

        public var searchValue: String {
            switch self {
            case .anklam: return "N1102"
            case .badDoberan: return "N1201"
            case .bergenAufRuegen: return "N1208"
            case .demmin: return "N1103"
            case .greifswald: return "N1202"
            case .grevesmühlen: return "N1203"
            case .guestrow: return "N1303"
            case .hagenow: return "N1304"
            case .ludwigslust: return "N1305"
            case .neubrandenburg: return "N1105V"
            case .neustrelitz: return "N1106"
            case .parchim: return "N1307"
            case .pasewalk: return "N1107"
            case .ribnitzDamgarten: return "N1205"
            case .rostock: return "N1206V"
            case .schwerin: return "N1308V"
            case .stralsund: return "N1209V"
            case .ueckermünde: return "N1111"
            case .warenMueritz: return "N1112"
            case .wismar: return "N1210"
            case .wolgast: return "N1211"
            }
        }

    }

}
