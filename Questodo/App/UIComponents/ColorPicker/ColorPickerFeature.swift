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
            Asset.Colors.Character.Skin.sLight.swiftUIColor,
            Asset.Colors.Character.Skin.sAmber.swiftUIColor,
            Asset.Colors.Character.Skin.sBrown.swiftUIColor,
            Asset.Colors.Character.Skin.sBlack.swiftUIColor
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
