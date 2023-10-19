//
//  CharacterModel.swift
//  Questodo
//
//  Created by Simon Zwicker on 14.10.23.
//

import Foundation

@Observable
class CharacterModel {
    var name: String
    var skin: CharacterSkin
    var hair: CharacterHair
    var equip: CharacterEquip
    var gender: String = "m"

    init(name: String = "", skin: CharacterSkin = .light, hair: CharacterHair = .init(), equip: CharacterEquip = .init()) {
        self.name = name
        self.skin = skin
        self.hair = hair
        self.equip = equip
    }
}
