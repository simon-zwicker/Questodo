//
//  AppRoutes.swift
//  Questodo
//
//  Created by Simon Zwicker on 24.10.23.
//

extension AppFeature {

    struct Root {

        enum State: Equatable {
            case creator(CharacterCreatorFeature.State)
        }

        enum Action: Equatable {
            case creator(CharacterCreatorFeature.Action)
        }
    }
}
