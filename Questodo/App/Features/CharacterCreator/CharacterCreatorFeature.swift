//
//  CharacterCreatorFeature.swift
//  Questodo
//
//  Created by Simon Zwicker on 05.10.23.
//

import SwiftUI
import ComposableArchitecture

struct CharacterCreatorFeature: Reducer {

    // MARK: - State
    struct State: Equatable {
        var picker: ColorPickerFeature.State
    }

    // MARK: - Actions
    enum Action: Equatable, BindableAction {
        case binding(BindingAction<State>)
        case picker(ColorPickerFeature.Action)
    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { _, action in
            switch action {
            case .picker: return .none
            case .binding: return .none
            }
        }
    }
}
