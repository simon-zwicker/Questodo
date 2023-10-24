//
//  CharacterSkin.swift
//  Questodo
//
//  Created by Simon Zwicker on 14.10.23.
//

import SwiftUI

enum CharacterSkin: String, Equatable, CaseIterable {
    case light
    case amber
    case brown
    case black

    var skinColor: Color {
        switch self {
        case .light: Asset.Colors.Character.Skin.sLight.swiftUIColor
        case .amber: Asset.Colors.Character.Skin.sAmber.swiftUIColor
        case .brown: Asset.Colors.Character.Skin.sBrown.swiftUIColor
        case .black: Asset.Colors.Character.Skin.sBlack.swiftUIColor
        }
    }

    var noseImage: Image {
        switch self {
        case .light: Asset.Characters.Nose.noseLight.swiftUIImage
        case .amber: Asset.Characters.Nose.noseAmber.swiftUIImage
        case .brown: Asset.Characters.Nose.noseBrown.swiftUIImage
        case .black: Asset.Characters.Nose.noseBlack.swiftUIImage
        }
    }

    static var allColors: [Color] {
        return self.allCases.compactMap { $0.skinColor }
    }
}
