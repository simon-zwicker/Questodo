//
//  CharacterView.swift
//  Questodo
//
//  Created by Simon Zwicker on 23.10.23.
//

import SwiftUI
import ComposableArchitecture

struct CharacterView: View {

    // MARK: - Store
    let store: StoreOf<CharacterFeature>

    // MARK: - Body
    var body: some View {
        WithViewStore(store, observe: { $0 }, content: { viewStore in
            ZStack {
                Image("body_\(viewStore.bodyType)_\(viewStore.skin.rawValue)")
                    .resizable()
                    .scaledToFit()

                Image("head_\(viewStore.bodyType)_\(viewStore.skin.rawValue)")
                    .resizable()
                    .scaledToFit()

                Image("nose_\(viewStore.skin.rawValue)")
                    .resizable()
                    .scaledToFit()

                EquipView(store: store.scope(
                    state: \.equip,
                    action: CharacterFeature.Action.equip
                ))

                Image("hair_\(viewStore.hairType.rawValue)_\(viewStore.bodyType)_\(viewStore.hairColor.rawValue)")
                    .resizable()
                    .scaledToFit()
            }
        })
    }
}

#Preview {
    let store = Store(initialState: .init(character: .init()), reducer: CharacterFeature.init)
    return CharacterView(store: store)
}
