//
//  CharacterEquipDraft.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import Foundation

struct CharacterEquipDraft {
    let id: UUID
    let characterId: UUID
    var chest: Equip.Chest
    var pant: Equip.Pant
    var shoe: Equip.Shoe

    init(id: UUID, chest: Equip.Chest = .standard, pant: Equip.Pant = .standard, shoe: Equip.Shoe = .standard) {
        self.id = UUID()
        self.characterId = id
        self.chest = chest
        self.pant = pant
        self.shoe = shoe
    }
}

extension CharacterEquipDraft: Equatable, Identifiable {
    static func == (lhs: CharacterEquipDraft, rhs: CharacterEquipDraft) -> Bool {
        return lhs.id == rhs.id
    }
}
