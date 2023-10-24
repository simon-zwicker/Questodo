//
//  AppFeature.swift
//  Questodo
//
//  Created by Simon Zwicker on 24.10.23.
//

import ComposableArchitecture

struct AppFeature: Reducer {

    // MARK: - State
    struct State: Equatable {
        var root: Root.State = .creator(.init())
    }

    // MARK: - Actions
    enum Action: Equatable {
        case root(Root.Action)
    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        Scope(state: \.root, action: /AppFeature.Action.root) {
            EmptyReducer()
                .ifCaseLet(/Root.State.creator, action: /Root.Action.creator, then: CharacterCreatorFeature.init)
        }
    }
}
