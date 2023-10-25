//
//  QuestodoClient_Live.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import ComposableArchitecture

extension QuestodoClient: DependencyKey {

    static var liveValue: QuestodoClient {
        return QuestodoClient(
            fetchCharacter: { characterId in
                let call = CharacterCall()
                let character = try await call.fetchCharacter(id: characterId)
                return CharacterDraft(
                    name: character.name,
                    skin: CharacterSkin(rawValue: character.skin) ?? .light,
                    hairType: CharacterHairType(rawValue: character.hairType) ?? .messy,
                    hairColor: CharacterHairColor(rawValue: character.hairColor) ?? .ash,
                    bodyType: character.bodyType,
                    equip: nil
                )
            }
        )
    }
}
