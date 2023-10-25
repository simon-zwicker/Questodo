//
//  EquipFeature.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import ComposableArchitecture

struct EquipFeature: Reducer {

    // MARK: - State
    struct State: Equatable {
        var chest: Equip.Chest
        var pant: Equip.Pant
        var shoe: Equip.Shoe
        var bodyType: Int

        init(character: CharacterDraft? = nil) {
            self.chest = character?.equip.chest ?? .standard
            self.pant = character?.equip.pant ?? .standard
            self.shoe = character?.equip.shoe ?? .standard
            self.bodyType = character?.bodyType ?? 1
        }
    }

    // MARK: - Actions
    enum Action: Equatable {
        case changeBodyType(Int)
    }

    // MARK: - Reducer
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .changeBodyType(let type): 
                state.bodyType = type
            }
            return .none
        }
    }
}
