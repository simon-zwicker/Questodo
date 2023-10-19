//
//  CharacterView.swift
//  Questodo
//
//  Created by Simon Zwicker on 14.10.23.
//

import SwiftUI

struct CharacterView: View {
    @Binding var character: CharacterModel

    var body: some View {
        ZStack {
            Image("body_\(character.gender)_\(character.skin.rawValue)")
                .resizable()
                .scaledToFit()

            Image("head_\(character.gender)_\(character.skin.rawValue)")
                .resizable()
                .scaledToFit()

            Image("nose_\(character.skin.rawValue)")
                .resizable()
                .scaledToFit()

            Image("pant_\(character.gender)_\(character.equip.pant.rawValue)")
                .resizable()
                .scaledToFit()
                .offset(y: -2)

            Image("chest_\(character.gender)_\(character.equip.pant.rawValue)")
                .resizable()
                .scaledToFit()
                .offset(y: -3)

            Image("shoe_\(character.gender)_\(character.equip.pant.rawValue)")
                .resizable()
                .scaledToFit()
                .offset(y: -1)

            Image("hair_\(character.hair.form.rawValue)_\(character.gender)_\(character.hair.color.rawValue)")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CharacterView(character: .constant(.init()))
}
