//
//  CharacterStyle.swift
//  Questodo
//
//  Created by Simon Zwicker on 05.10.23.
//

import Foundation

struct CharacterHair: Identifiable {
    let id: UUID
    var form: CharacterHairType
    var color: CharacterHairColor

    init(form: CharacterHairType = .messy, color: CharacterHairColor = .ash) {
        self.id = UUID()
        self.form = form
        self.color = color
    }
}

struct CharacterEquip: Identifiable {
    let id: UUID
    var chest: Equip.Chest
    var pant: Equip.Pant
    var shoe: Equip.Shoe

    init(chest: Equip.Chest = .standard, pant: Equip.Pant = .standard, shoe: Equip.Shoe = .standard) {
        self.id = UUID()
        self.chest = chest
        self.pant = pant
        self.shoe = shoe
    }
}
