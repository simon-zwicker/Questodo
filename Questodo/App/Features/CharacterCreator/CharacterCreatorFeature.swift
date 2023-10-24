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
        var myCharacter: CharacterFeature.State = .init(
            draft: .init(id: UUID()),
            equip: .init()
        )

        var skinColorPicker: ColorPickerFeature.State = .init(
            title: "Skin color",
            selectedColor: CharacterSkin.light.skinColor,
            palette: CharacterSkin.allColors
        )

        var hairColorPicker: ColorPickerFeature.State = .init(
            title: "Hair color",
            selectedColor: CharacterHairColor.ash.hairColor,
            palette: CharacterHairColor.allColors
        )
    }

    // MARK: - Actions
    enum Action: Equatable, BindableAction {
        case binding(BindingAction<State>)
        case skinColor(ColorPickerFeature.Action)
        case hairColor(ColorPickerFeature.Action)
        case myCharacter(CharacterFeature.Action)
        case nextHair
        case previousHair
        case changeBodyType
    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        BindingReducer()

        Scope(state: \.skinColorPicker, action: /Action.skinColor, child: ColorPickerFeature.init)
        Scope(state: \.hairColorPicker, action: /Action.hairColor, child: ColorPickerFeature.init)
        Scope(state: \.myCharacter, action: /Action.myCharacter, child: CharacterFeature.init)

        Reduce { state, action in
            switch action {
            case .nextHair:
                return .send(.myCharacter(.nextHair))

            case .previousHair:
                return .send(.myCharacter(.previousHair))

            case .skinColor(.delegate(.colorChanged(let color))):
                guard let choosenSkin = CharacterSkin.allCases.first(where: { $0.skinColor == color }) else { return .none}
                return .send(.myCharacter(.changeSkin(choosenSkin)))

            case .hairColor(.delegate(.colorChanged(let color))):
                guard let choosenHairColor = CharacterHairColor.allCases.first(where: { $0.hairColor == color }) else { return .none}
                return .send(.myCharacter(.changeHairColor(choosenHairColor)))

            case .changeBodyType:
                return .send(.myCharacter(.changeBodyType))

            case .myCharacter: return .none
            case .skinColor: return .none
            case .hairColor: return .none
            case .binding: return .none
            }
            return .none
        }
    }
}
