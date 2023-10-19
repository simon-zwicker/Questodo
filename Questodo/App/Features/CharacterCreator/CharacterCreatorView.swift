//
//  CharacterCreatorView.swift
//  Questodo
//
//  Created by Simon Zwicker on 05.10.23.
//

import SwiftUI
import ComposableArchitecture

struct CharacterCreatorView: View {

    // MARK: - Store
    let store: StoreOf<CharacterCreatorFeature>

    // MARK: - Body
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            VStack {
                Text("Test")
                Spacer()
            }
        }
    }
}

#Preview {
    let store = Store(
        initialState: CharacterCreatorFeature.State(picker: .init(selectedColor: Asset.Colors.Character.Skin.sLight.swiftUIColor)),
        reducer: CharacterCreatorFeature.init
    )
    return PreviewColorScheme(CharacterCreatorView(store: store))
}
