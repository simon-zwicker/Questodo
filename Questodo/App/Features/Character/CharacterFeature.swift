//
//  CharacterFeature.swift
//  Questodo
//
//  Created by Simon Zwicker on 23.10.23.
//

import Foundation
import ComposableArchitecture

struct CharacterFeature: Reducer {

    // MARK: - State
    struct State: Equatable {
        var draft: CharacterDraft
        var skin: CharacterSkin
        var hairType: CharacterHairType
        var hairColor: CharacterHairColor
        var gender: String
        var equip: CharacterEquip

        init(draft: CharacterDraft = .init(id: UUID()), equip: CharacterEquip = .init()) {
            self.draft = draft
            self.equip = equip

            skin = draft.skin
            hairType = draft.hairType
            hairColor = draft.hairColor
            gender = draft.gender
        }
    }

    // MARK: - Actions
    enum Action: Equatable {
        case nextHair
        case previousHair
        case changeBodyType
        case changeHairColor(CharacterHairColor)
        case changeSkin(CharacterSkin)
    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .nextHair:
                state.hairType = state.hairType.next

            case .previousHair:
                state.hairType = state.hairType.previous

            case .changeBodyType:
                state.gender = state.gender == "m" ? "f": "m"

            case .changeHairColor(let hairColor):
                state.hairColor = hairColor

            case .changeSkin(let skin):
                state.skin = skin
            }
            return .none
        }
    }
}
