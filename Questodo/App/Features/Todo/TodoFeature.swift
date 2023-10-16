//
//  TodoFeature.swift
//  Questodo
//
//  Created by Simon Zwicker on 04.10.23.
//

import ComposableArchitecture

struct TodoFeature: Reducer {

    // MARK: - State
    struct State: Equatable {

    }

    // MARK: - Actions
    enum Action: Equatable {

    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        EmptyReducer()
    }
}
