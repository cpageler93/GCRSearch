//
//  Court+BadenWuerttemberg.swift
//  GCRSearch
//
//  Created by Christoph Pageler on 31.12.20.
//


import Foundation


public extension Court {

    enum BadenWuerttemberg: Courtable, CaseIterable {

        case aalen
        case achern
        case adelsheim
        case albstadt
        case backnang
        case badMergentheim
        case badSäckingen
        case badSaulgau
        case badUrach
        case badWaldsee
        case badenBaden
        case balingen
        case besigheim
        case biberach
        case böblingen
        case brackenheim
        case breisachAmRhein
        case bretten
        case bruchsal
        case buchen
        case bühl
        case calw
        case crailsheim
        case donaueschingen
        case ehingen
        case ellwangenJagst
        case emmendingen
        case esslingenAmNeckar
        case ettenheim
        case ettlingen
        case freiburg
        case freudenstadt
        case geislingenSteige
        case gengenbach
        case gernsbach
        case goeppingen
        case hechingen
        case heidelberg
        case heidenheim
        case heilbronn
        case horb
        case karlsruhe
        case karlsruheDurlach
        case kehl
        case kenzingen
        case kirchheimUnterTeck
        case konstanz
        case künzelsau
        case lahr
        case langenburg
        case leonberg
        case leutkirch
        case loerrach
        case ludwigsburg
        case mannheim
        case marbach
        case maulbronn
        case mosbach
        case müllheim
        case münsingen
        case nagold
        case neresheim
        case nürtingen
        case oberkirch
        case oberndorf
        case offenburg
        case oehringen
        case pforzheim
        case philippsburg
        case radolfzell
        case rastatt
        case ravensburg
        case reutlingen
        case riedlingen
        case rottenburgAmNeckar
        case rottweil
        case sanktBlasien
        case schönauImSchwarzwald
        case schopfheim
        case schorndorf
        case schwaebischGmuend
        case schwaebischHall
        case schwetzingen
        case sigmaringen
        case singenHohentwiel
        case sinsheim
        case spaichingen
        case staufenIBr
        case stockach
        case stuttgart
        case tauberbischofsheim
        case tettnang
        case titiseeNeustadt
        case tuebingen
        case tuttlingen
        case überlingen
        case ulm
        case vaihingenEnz
        case villingenSchwenningen
        case waiblingen
        case waldkirch
        case waldshutTiengen
        case wangenAllgäu
        case weinheim
        case wertheim
        case wiesloch
        case wolfach

        public var title: String {
            switch self {
            case .aalen: return "Aalen"
            case .achern: return "Achern"
            case .adelsheim: return "Adelsheim"
            case .albstadt: return "Albstadt"
            case .backnang: return "Backnang"
            case .badMergentheim: return "BadMergentheim"
            case .badSäckingen: return "BadSäckingen"
            case .badSaulgau: return "BadSaulgau"
            case .badUrach: return "BadUrach"
            case .badWaldsee: return "BadWaldsee"
            case .badenBaden: return "Baden-Baden"
            case .balingen: return "Balingen"
            case .besigheim: return "Besigheim"
            case .biberach: return "Biberach"
            case .böblingen: return "Böblingen"
            case .brackenheim: return "Brackenheim"
            case .breisachAmRhein: return "Breisach am Rhein"
            case .bretten: return "Bretten"
            case .bruchsal: return "Bruchsal"
            case .buchen: return "Buchen"
            case .bühl: return "Bühl"
            case .calw: return "Calw"
            case .crailsheim: return "Crailsheim"
            case .donaueschingen: return "Donaueschingen"
            case .ehingen: return "Ehingen"
            case .ellwangenJagst: return "Ellwangen (Jagst)"
            case .emmendingen: return "Emmendingen"
            case .esslingenAmNeckar: return "Esslingen am Neckar"
            case .ettenheim: return "Ettenheim"
            case .ettlingen: return "Ettlingen"
            case .freiburg: return "Freiburg"
            case .freudenstadt: return "Freudenstadt"
            case .geislingenSteige: return "Geislingen / Steige"
            case .gengenbach: return "Gengenbach"
            case .gernsbach: return "Gernsbach"
            case .goeppingen: return "Göppingen"
            case .hechingen: return "Hechingen"
            case .heidelberg: return "Heidelberg"
            case .heidenheim: return "Heidenheim"
            case .heilbronn: return "Heilbronn"
            case .horb: return "Horb"
            case .karlsruhe: return "Karlsruhe"
            case .karlsruheDurlach: return "Karlsruhe-Durlach"
            case .kehl: return "Kehl"
            case .kenzingen: return "Kenzingen"
            case .kirchheimUnterTeck: return "Kirchheim unter Teck"
            case .konstanz: return "Konstanz"
            case .künzelsau: return "Künzelsau"
            case .lahr: return "Lahr"
            case .langenburg: return "Langenburg"
            case .leonberg: return "Leonberg"
            case .leutkirch: return "Leutkirch"
            case .loerrach: return "Lörrach"
            case .ludwigsburg: return "Ludwigsburg"
            case .mannheim: return "Mannheim"
            case .marbach: return "Marbach"
            case .maulbronn: return "Maulbronn"
            case .mosbach: return "Mosbach"
            case .müllheim: return "Müllheim"
            case .münsingen: return "Münsingen"
            case .nagold: return "Nagold"
            case .neresheim: return "Neresheim"
            case .nürtingen: return "Nürtingen"
            case .oberkirch: return "Oberkirch"
            case .oberndorf: return "Oberndorf"
            case .offenburg: return "Offenburg"
            case .oehringen: return "Öhringen"
            case .pforzheim: return "Pforzheim"
            case .philippsburg: return "Philippsburg"
            case .radolfzell: return "Radolfzell"
            case .rastatt: return "Rastatt"
            case .ravensburg: return "Ravensburg"
            case .reutlingen: return "Reutlingen"
            case .riedlingen: return "Riedlingen"
            case .rottenburgAmNeckar: return "Rottenburg am Neckar"
            case .rottweil: return "Rottweil"
            case .sanktBlasien: return "Sankt Blasien"
            case .schönauImSchwarzwald: return "Schönau im Schwarzwald"
            case .schopfheim: return "Schopfheim"
            case .schorndorf: return "Schorndorf"
            case .schwaebischGmuend: return "Schwäbisch Gmünd"
            case .schwaebischHall: return "Schwäbisch Hall"
            case .schwetzingen: return "Schwetzingen"
            case .sigmaringen: return "Sigmaringen"
            case .singenHohentwiel: return "Singen (Hohentwiel)"
            case .sinsheim: return "Sinsheim"
            case .spaichingen: return "Spaichingen"
            case .staufenIBr: return "Staufen i. Br."
            case .stockach: return "Stockach"
            case .stuttgart: return "Stuttgart"
            case .tauberbischofsheim: return "Tauberbischofsheim"
            case .tettnang: return "Tettnang"
            case .titiseeNeustadt: return "Titisee-Neustadt"
            case .tuebingen: return "Tübingen"
            case .tuttlingen: return "Tuttlingen"
            case .überlingen: return "Überlingen"
            case .ulm: return "Ulm"
            case .vaihingenEnz: return "Vaihingen / Enz"
            case .villingenSchwenningen: return "Villingen-Schwenningen"
            case .waiblingen: return "Waiblingen"
            case .waldkirch: return "Waldkirch"
            case .waldshutTiengen: return "Waldshut-Tiengen"
            case .wangenAllgäu: return "Wangen / Allgäu"
            case .weinheim: return "Weinheim"
            case .wertheim: return "Wertheim"
            case .wiesloch: return "Wiesloch"
            case .wolfach: return "Wolfach"
            }
        }

        public var searchValue: String {
            switch self {
            case .aalen: return "B2101"
            case .achern: return "B1101"
            case .adelsheim: return "B1701"
            case .albstadt: return "B2202"
            case .backnang: return "B2601"
            case .badMergentheim: return "B2102"
            case .badSäckingen: return "B1902"
            case .badSaulgau: return "B2406"
            case .badUrach: return "B2708"
            case .badWaldsee: return "B2401"
            case .badenBaden: return "B1102"
            case .balingen: return "B2201"
            case .besigheim: return "B2301"
            case .biberach: return "B2402"
            case .böblingen: return "B2602"
            case .brackenheim: return "B2302"
            case .breisachAmRhein: return "B1201"
            case .bretten: return "B1401"
            case .bruchsal: return "B1402"
            case .buchen: return "B1703"
            case .bühl: return "B1103"
            case .calw: return "B2701"
            case .crailsheim: return "B2103"
            case .donaueschingen: return "B1501"
            case .ehingen: return "B2801"
            case .ellwangenJagst: return "B2104"
            case .emmendingen: return "B1202"
            case .esslingenAmNeckar: return "B2603"
            case .ettenheim: return "B1203"
            case .ettlingen: return "B1403"
            case .freiburg: return "B8536"
            case .freudenstadt: return "B2501"
            case .geislingenSteige: return "B2802"
            case .gengenbach: return "B1801"
            case .gernsbach: return "B1104"
            case .goeppingen: return "B2803"
            case .hechingen: return "B2204"
            case .heidelberg: return "B1302"
            case .heidenheim: return "B2105"
            case .heilbronn: return "B2303"
            case .horb: return "B2502"
            case .karlsruhe: return "B1404"
            case .karlsruheDurlach: return "B1405"
            case .kehl: return "B1802"
            case .kenzingen: return "B1205"
            case .kirchheimUnterTeck: return "B2604"
            case .konstanz: return "B1503"
            case .künzelsau: return "B2304"
            case .lahr: return "B1803"
            case .langenburg: return "B2106"
            case .leonberg: return "B2605"
            case .leutkirch: return "B2403"
            case .loerrach: return "B1206"
            case .ludwigsburg: return "B2606"
            case .mannheim: return "B8535"
            case .marbach: return "B2305"
            case .maulbronn: return "B2306"
            case .mosbach: return "B1705"
            case .müllheim: return "B1207"
            case .münsingen: return "B2702"
            case .nagold: return "B2703"
            case .neresheim: return "B2107"
            case .nürtingen: return "B2607"
            case .oberkirch: return "B1804"
            case .oberndorf: return "B2503"
            case .offenburg: return "B1805"
            case .oehringen: return "B2307"
            case .pforzheim: return "B1406"
            case .philippsburg: return "B1407"
            case .radolfzell: return "B1506"
            case .rastatt: return "B1105"
            case .ravensburg: return "B2404"
            case .reutlingen: return "B2705"
            case .riedlingen: return "B2405"
            case .rottenburgAmNeckar: return "B2706"
            case .rottweil: return "B2504"
            case .sanktBlasien: return "B1903"
            case .schönauImSchwarzwald: return "B1904"
            case .schopfheim: return "B1905"
            case .schorndorf: return "B2608"
            case .schwaebischGmuend: return "B2108"
            case .schwaebischHall: return "B2308"
            case .schwetzingen: return "B1602"
            case .sigmaringen: return "B2205"
            case .singenHohentwiel: return "B1507"
            case .sinsheim: return "B1304"
            case .spaichingen: return "B2505"
            case .staufenIBr: return "B1209"
            case .stockach: return "B1508"
            case .stuttgart: return "B8534"
            case .tauberbischofsheim: return "B1706"
            case .tettnang: return "B2407"
            case .titiseeNeustadt: return "B1208"
            case .tuebingen: return "B2707"
            case .tuttlingen: return "B2506"
            case .überlingen: return "B1510"
            case .ulm: return "B8537"
            case .vaihingenEnz: return "B2309"
            case .villingenSchwenningen: return "B1511"
            case .waiblingen: return "B2611"
            case .waldkirch: return "B1210"
            case .waldshutTiengen: return "B1906"
            case .wangenAllgäu: return "B2408"
            case .weinheim: return "B1603"
            case .wertheim: return "B1707"
            case .wiesloch: return "B1305"
            case .wolfach: return "B1806"
            }
        }

    }

}


