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
        var character: CharacterFeature.State

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

        init(char: CharacterDraft? = nil) {
            self.character = .init()
        }
    }

    // MARK: - Actions
    enum Action: Equatable, BindableAction {
        case binding(BindingAction<State>)
        case skinColor(ColorPickerFeature.Action)
        case hairColor(ColorPickerFeature.Action)
        case character(CharacterFeature.Action)
        case nextHair
        case previousHair
        case changeBodyType
        case appear
        case fetchedCharacter(TaskResult<CharacterDraft>)
    }

    @Dependency(\.questodo) var questodo

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        BindingReducer()

        Scope(state: \.skinColorPicker, action: /Action.skinColor, child: ColorPickerFeature.init)
        Scope(state: \.hairColorPicker, action: /Action.hairColor, child: ColorPickerFeature.init)
        Scope(state: \.character, action: /Action.character, child: CharacterFeature.init)

        Reduce { state, action in
            switch action {
            case .appear:
                let id = "123dfr432gtrfs5"
                return .run { send in
                    await send(.fetchedCharacter(TaskResult { try await questodo.fetchCharacter(id) }))
                }

            case .fetchedCharacter(.success(let character)):
                print(character)

            case .fetchedCharacter(.failure(let error)):
                print(error)

            case .nextHair:
                return .send(.character(.nextHair))

            case .previousHair:
                return .send(.character(.previousHair))

            case .skinColor(.delegate(.colorChanged(let color))):
                guard let choosenSkin = CharacterSkin.allCases.first(where: { $0.skinColor == color }) else { return .none}
                return .send(.character(.changeSkin(choosenSkin)))

            case .hairColor(.delegate(.colorChanged(let color))):
                guard let choosenHairColor = CharacterHairColor.allCases.first(where: { $0.hairColor == color }) else { return .none}
                return .send(.character(.changeHairColor(choosenHairColor)))

            case .changeBodyType:
                let bodyType = state.character.bodyType == 1 ? 2: 1
                return .send(.character(.changeBodyType(bodyType)))

            default: return .none
            }
            return .none
        }
    }
}
