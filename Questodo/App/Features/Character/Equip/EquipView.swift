//
//  EquipView.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import SwiftUI
import ComposableArchitecture

struct EquipView: View {

    // MARK: - Store
    let store: StoreOf<EquipFeature>

    // MARK: - Body
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            ZStack {
                Image("pant_\(viewStore.bodyType)_\(viewStore.pant.rawValue)")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -2)

                Image("chest_\(viewStore.bodyType)_\(viewStore.chest.rawValue)")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -3)

                Image("shoe_\(viewStore.bodyType)_\(viewStore.shoe.rawValue)")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -1)
            }
        }
    }
}

#Preview {
    let store = Store(initialState: .init(character: .init()), reducer: EquipFeature.init)
    return EquipView(store: store)
}
