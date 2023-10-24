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
    var gender: String = "m"
}

extension CharacterDraft: Equatable, Identifiable {
    static func == (lhs: CharacterDraft, rhs: CharacterDraft) -> Bool {
        return lhs.id == rhs.id
    }
}
