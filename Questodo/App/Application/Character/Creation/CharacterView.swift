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

            character.skin.noseImage
                .resizable()
                .scaledToFit()

            Image("hair_\(character.hair.form.rawValue)_\(character.gender)_\(character.hair.color.rawValue)")
                .resizable()
                .scaledToFit()

            character.equip.chest.image
                .resizable()
                .scaledToFit()

            character.equip.pant.image
                .resizable()
                .scaledToFit()

            character.equip.shoe.image
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CharacterView(character: .constant(.init()))
}
