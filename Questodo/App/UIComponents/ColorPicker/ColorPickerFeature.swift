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
        @BindingState var selectedColor: Color
        var colorPalette: [Color] = [
            Asset.Colors.Character.skinLight.swiftUIColor,
            Asset.Colors.Character.skinAmber.swiftUIColor,
            Asset.Colors.Character.skinBrown.swiftUIColor,
            Asset.Colors.Character.skinBlack.swiftUIColor
        ]
    }

    // MARK: - Actions
    enum Action: Equatable, BindableAction {
        case binding(BindingAction<State>)
        case colorTapped(Color)
    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
            case .colorTapped(let color):
                state.selectedColor = color

            case .binding: return .none
            }
            return .none
        }
    }
}
