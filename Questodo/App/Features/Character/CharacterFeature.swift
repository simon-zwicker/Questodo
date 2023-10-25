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
        var skin: CharacterSkin
        var hairType: CharacterHairType
        var hairColor: CharacterHairColor
        var bodyType: Int
        var equip: EquipFeature.State

        init(character: CharacterDraft? = nil) {
            self.skin = character?.skin ?? .light
            self.hairType = character?.hairType ?? .page
            self.hairColor = character?.hairColor ?? .ash
            self.bodyType = character?.bodyType ?? 1
            self.equip = .init(character: character)
        }
    }

    // MARK: - Actions
    enum Action: Equatable {
        case nextHair
        case previousHair
        case changeBodyType(Int)
        case changeHairColor(CharacterHairColor)
        case changeSkin(CharacterSkin)
        case equip(EquipFeature.Action)
    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        Scope(state: \.equip, action: /Action.equip, child: EquipFeature.init)

        Reduce { state, action in
            switch action {
            case .nextHair:
                state.hairType = state.hairType.next

            case .previousHair:
                state.hairType = state.hairType.previous

            case .changeBodyType(let type):
                state.bodyType = type
                return .send(.equip(.changeBodyType(type)))

            case .changeHairColor(let hairColor):
                state.hairColor = hairColor

            case .changeSkin(let skin):
                state.skin = skin

            default: return .none
            }
            return .none
        }
    }
}
