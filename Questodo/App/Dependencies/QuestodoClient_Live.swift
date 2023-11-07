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
                return await CharacterAdapter.convertObject(character)
            }
        )
    }
}
