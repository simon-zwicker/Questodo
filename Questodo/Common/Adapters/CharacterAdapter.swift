//
//  CharacterAdapter.swift
//  Questodo
//
//  Created by Simon Zwicker on 05.11.23.
//

import Foundation

@MainActor
struct CharacterAdapter {

    static func convertObjects(_ response: [CharacterJSON]) async -> [CharacterDraft] {
        return response
            .compactMap { convertObject($0) }
    }

    static func convertObject(_ response: CharacterJSON) -> CharacterDraft {
        return CharacterDraft(
            name: response.name,
            skin: CharacterSkin(rawValue: response.skin) ?? .light,
            hairType: CharacterHairType(rawValue: response.hairType) ?? .spiked,
            hairColor: CharacterHairColor(rawValue: response.hairColor) ?? .ash, 
            bodyType: response.bodyType
        )
    }
}

