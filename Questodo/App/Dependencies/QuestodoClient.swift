//
//  QuestodoClient.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import ComposableArchitecture

struct QuestodoClient {
    /*
     Fetching own Character by ID
     */
    var fetchCharacter: @Sendable (String) async throws -> CharacterDraft
}

extension DependencyValues {
    var questodo: QuestodoClient {
        get { self[QuestodoClient.self] }
        set { self[QuestodoClient.self] = newValue }
    }
}
