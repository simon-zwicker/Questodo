//
//  CharacterSkin.swift
//  Questodo
//
//  Created by Simon Zwicker on 14.10.23.
//

import SwiftUI

enum CharacterSkin: String, CaseIterable {
    case light
    case amber
    case brown
    case black

    var skinColor: Color {
        switch self {
        case .light: Asset.Colors.Character.skinLight.swiftUIColor
        case .amber: Asset.Colors.Character.skinAmber.swiftUIColor
        case .brown: Asset.Colors.Character.skinBrown.swiftUIColor
        case .black: Asset.Colors.Character.skinBlack.swiftUIColor
        }
    }

    var headImage: Image {
        switch self {
        case .light: Asset.Characters.Head.headLight.swiftUIImage
        case .amber: Asset.Characters.Head.headAmber.swiftUIImage
        case .brown: Asset.Characters.Head.headBrown.swiftUIImage
        case .black: Asset.Characters.Head.headBlack.swiftUIImage
        }
    }

    var bodyImage: Image {
        switch self {
        case .light: Asset.Characters.Body.bodyLight.swiftUIImage
        case .amber: Asset.Characters.Body.bodyAmber.swiftUIImage
        case .brown: Asset.Characters.Body.bodyBrown.swiftUIImage
        case .black: Asset.Characters.Body.bodyBlack.swiftUIImage
        }
    }
}
