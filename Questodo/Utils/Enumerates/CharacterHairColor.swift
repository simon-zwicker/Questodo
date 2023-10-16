//
//  CharacterHairColor.swift
//  Questodo
//
//  Created by Simon Zwicker on 14.10.23.
//

import SwiftUI

enum CharacterHairType: String, CaseIterable {
    case messy
    case page
    case pixie
    case spiked

    var next: CharacterHairType {
        switch self {
        case .messy: .page
        case .page: .pixie
        case .pixie: .spiked
        case .spiked: .messy
        }
    }

    var previous: CharacterHairType {
        switch self {
        case .messy: .spiked
        case .page: .messy
        case .pixie: .page
        case .spiked: .pixie
        }
    }
}

enum CharacterHairColor: String, CaseIterable {
    case ash
    case black
    case blonde
    case dark_brown
    case light_brown
    case gray
    case redhead
    case white

    var hairColor: Color {
        switch self {
        case .ash: Asset.Colors.Character.hairAsh.swiftUIColor
        case .black: Asset.Colors.Character.hairBlack.swiftUIColor
        case .blonde: Asset.Colors.Character.hairBlonde.swiftUIColor
        case .dark_brown: Asset.Colors.Character.hairDarkBrown.swiftUIColor
        case .light_brown: Asset.Colors.Character.hairLightBrown.swiftUIColor
        case .gray: Asset.Colors.Character.hairGray.swiftUIColor
        case .redhead: Asset.Colors.Character.hairRedhead.swiftUIColor
        case .white: Asset.Colors.Character.hairWhite.swiftUIColor
        }
    }
}
