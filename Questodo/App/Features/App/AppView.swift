//
//  AppView.swift
//  Questodo
//
//  Created by Simon Zwicker on 24.10.23.
//

import SwiftUI
import ComposableArchitecture

struct AppView: View {

    // MARK: - Store
    let store: StoreOf<AppFeature>

    // MARK: - Body
    var body: some View {
        SwitchStore(store.scope(state: \.root, action: AppFeature.Action.root)) {
            switch $0 {
            case .creator:
                CaseLet(
                    /AppFeature.Root.State.creator,
                     action: AppFeature.Root.Action.creator,
                     then: CharacterCreatorView.init
                )
            }
        }
        .background(Color.mainBackground)
    }
}

#Preview {
    let store = Store(initialState: .init(), reducer: AppFeature.init)
    return PreviewColorScheme(AppView(store: store))
}
