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
            character.skin.bodyImage
                .resizable()
                .scaledToFit()

            character.skin.headImage
                .resizable()
                .scaledToFit()

            Image("hair_\(character.style.hair.form.rawValue)_\(character.style.hair.color.rawValue)")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CharacterView(character: .constant(.init()))
}
