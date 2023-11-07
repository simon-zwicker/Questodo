//
//  CharacterDraft.swift
//  Questodo
//
//  Created by Simon Zwicker on 23.10.23.
//

import Foundation

struct CharacterDraft {
    let id: UUID
    var name: String = ""
    var skin: CharacterSkin = .light
    var hairType: CharacterHairType = .messy
    var hairColor: CharacterHairColor = .ash
    var bodyType: Int = 1
    var equip: CharacterEquipDraft

    init(
        name: String = "",
        skin: CharacterSkin = .light,
        hairType: CharacterHairType = .messy,
        hairColor: CharacterHairColor = .ash,
        bodyType: Int = 1,
        equip: CharacterEquipDraft? = nil
    ) {
        self.id = UUID()
        self.name = name
        self.skin = skin
        self.hairType = hairType
        self.hairColor = hairColor
        self.bodyType = bodyType
        self.equip = equip ?? .init(id: self.id)
    }
}

extension CharacterDraft: Equatable, Identifiable {
    static func == (lhs: CharacterDraft, rhs: CharacterDraft) -> Bool {
        return lhs.id == rhs.id
    }
}
