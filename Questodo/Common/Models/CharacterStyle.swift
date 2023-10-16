//
//  CharacterStyle.swift
//  Questodo
//
//  Created by Simon Zwicker on 05.10.23.
//

import Foundation

struct CharacterStyle: Identifiable {
    let id: UUID
    var skin: CharacterSkin
    var hair: CharacterHair
    var equip: CharacterEquip

    init(skin: CharacterSkin = .light, hair: CharacterHair = .init(), equip: CharacterEquip = .init()) {
        self.id = UUID()
        self.skin = skin
        self.hair = hair
        self.equip = equip
    }
}

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
    var torso: String
    var weapon: String

    init(torso: String = "leather", weapon: String = "longsword") {
        self.id = UUID()
        self.torso = torso
        self.weapon = weapon
    }
}
