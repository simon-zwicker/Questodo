//
//  CharacterEquip.swift
//  Questodo
//
//  Created by Simon Zwicker on 16.10.23.
//

import SwiftUI

enum Equip {
    enum Chest: String {
        case standard

        var image: Image {
            switch self {
            case .standard: Asset.Characters.Equip.Chest.chestDefault.swiftUIImage
            }
        }
    }

    enum Shoe: String {
        case standard

        var image: Image {
            switch self {
            case .standard: Asset.Characters.Equip.Shoe.shoeDefault.swiftUIImage
            }
        }
    }

    enum Pant: String {
        case standard

        var image: Image {
            switch self {
            case .standard: Asset.Characters.Equip.Pant.pantDefault.swiftUIImage
            }
        }
    }
}
