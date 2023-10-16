//
//  CharacterModel.swift
//  Questodo
//
//  Created by Simon Zwicker on 14.10.23.
//

import Foundation

@Observable
class CharacterModel {
    var style: CharacterStyle
    var skin: CharacterSkin

    init(style: CharacterStyle = .init()) {
        self.style = style
        self.skin = style.skin
    }

    func save() {
        style.skin = skin
    }
}
