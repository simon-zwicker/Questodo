//
//  QuestodoApp.swift
//  Questodo
//
//  Created by Simon Zwicker on 29.09.23.
//

import SwiftUI

@main
struct QuestodoApp: App {
    var body: some Scene {
        WindowGroup {
            CharacterCreationView(character: .init())
        }
    }
}
