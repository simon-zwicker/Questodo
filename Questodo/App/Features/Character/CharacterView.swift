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
        WithViewStore(store, observe: { $0 }) { viewStore in
            ZStack {
                Image("body_\(viewStore.gender)_\(viewStore.skin.rawValue)")
                    .resizable()
                    .scaledToFit()

                Image("head_\(viewStore.gender)_\(viewStore.skin.rawValue)")
                    .resizable()
                    .scaledToFit()

                Image("nose_\(viewStore.skin.rawValue)")
                    .resizable()
                    .scaledToFit()

                Image("pant_\(viewStore.gender)_\(viewStore.equip.pant.rawValue)")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -2)

                Image("chest_\(viewStore.gender)_\(viewStore.equip.pant.rawValue)")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -3)

                Image("shoe_\(viewStore.gender)_\(viewStore.equip.pant.rawValue)")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -1)

                Image("hair_\(viewStore.hairType.rawValue)_\(viewStore.gender)_\(viewStore.hairColor.rawValue)")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

#Preview {
    let store = Store(initialState: .init(draft: .init(id: UUID()), equip: .init()), reducer: CharacterFeature.init)
    return CharacterView(store: store)
}
