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
    case princess
    case spiked
    case idol

    var next: CharacterHairType {
        switch self {
        case .messy: .page
        case .page: .pixie
        case .pixie: .princess
        case .princess: .spiked
        case .spiked: .idol
        case .idol: .messy
        }
    }

    var previous: CharacterHairType {
        switch self {
        case .messy: .idol
        case .page: .messy
        case .pixie: .page
        case .princess: .pixie
        case .spiked: .princess
        case .idol: .spiked
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
    case navy
    case pink
    case violet
    case strawberry
    case sandy
    case rose
    case red
    case raven
    case purple
    case platinum
    case orange
    case green
    case gold
    case ginger
    case dark_gray
    case chestnut
    case carrot
    case blue

    var hairColor: Color {
        switch self {
        case .ash: Asset.Colors.Character.Hair.hAsh.swiftUIColor
        case .black: Asset.Colors.Character.Hair.hBlack.swiftUIColor
        case .blonde: Asset.Colors.Character.Hair.hBlonde.swiftUIColor
        case .dark_brown: Asset.Colors.Character.Hair.hDarkBrown.swiftUIColor
        case .light_brown: Asset.Colors.Character.Hair.hLightBrown.swiftUIColor
        case .gray: Asset.Colors.Character.Hair.hGray.swiftUIColor
        case .redhead: Asset.Colors.Character.Hair.hRedhead.swiftUIColor
        case .white: Asset.Colors.Character.Hair.hWhite.swiftUIColor
        case .navy: Asset.Colors.Character.Hair.hNavy.swiftUIColor
        case .pink: Asset.Colors.Character.Hair.hPink.swiftUIColor
        case .violet: Asset.Colors.Character.Hair.hViolet.swiftUIColor
        case .strawberry: Asset.Colors.Character.Hair.hStrawberry.swiftUIColor
        case .sandy: Asset.Colors.Character.Hair.hSandy.swiftUIColor
        case .rose: Asset.Colors.Character.Hair.hRose.swiftUIColor
        case .red: Asset.Colors.Character.Hair.hRed.swiftUIColor
        case .raven: Asset.Colors.Character.Hair.hRaven.swiftUIColor
        case .purple: Asset.Colors.Character.Hair.hPurple.swiftUIColor
        case .platinum: Asset.Colors.Character.Hair.hPlatinum.swiftUIColor
        case .orange: Asset.Colors.Character.Hair.hOrange.swiftUIColor
        case .green: Asset.Colors.Character.Hair.hGreen.swiftUIColor
        case .gold: Asset.Colors.Character.Hair.hGold.swiftUIColor
        case .ginger: Asset.Colors.Character.Hair.hGinger.swiftUIColor
        case .dark_gray: Asset.Colors.Character.Hair.hDarkGray.swiftUIColor
        case .chestnut: Asset.Colors.Character.Hair.hChestnut.swiftUIColor
        case .carrot: Asset.Colors.Character.Hair.hCarrot.swiftUIColor
        case .blue: Asset.Colors.Character.Hair.hBlue.swiftUIColor
        }
    }
}
