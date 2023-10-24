//
//  ColorPickerFeature.swift
//  Questodo
//
//  Created by Simon Zwicker on 07.10.23.
//

import ComposableArchitecture
import SwiftUI

struct ColorPickerFeature: Reducer {

    // MARK: - State
    struct State: Equatable {
        var title: String
        @BindingState var selectedColor: Color
        var palette: [Color]
    }

    // MARK: - Actions
    enum Action: Equatable, BindableAction {
        case binding(BindingAction<State>)
        case colorTapped(Color)
        case delegate(Delegate)

        enum Delegate: Equatable {
            case colorChanged(Color)
        }
    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
            case .colorTapped(let color):
                state.selectedColor = color
                return .send(.delegate(.colorChanged(color)))

            case .binding: return .none
            case .delegate: return .none
            }
        }
    }
}
