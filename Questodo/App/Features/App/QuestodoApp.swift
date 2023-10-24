//
//  QuestodoApp.swift
//  Questodo
//
//  Created by Simon Zwicker on 29.09.23.
//

import SwiftUI
import ComposableArchitecture

@main
struct QuestodoApp: App {

    // MARK: - Store
    let store: StoreOf<AppFeature> = .init(initialState: .init()) {
        AppFeature()._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            AppView(store: store)
        }
    }
}
