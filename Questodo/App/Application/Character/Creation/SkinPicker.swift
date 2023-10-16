//
//  SkinPicker.swift
//  Questodo
//
//  Created by Simon Zwicker on 14.10.23.
//

import SwiftUI

struct SkinPicker: View {
    @Binding var selected: CharacterSkin
    let skinPalette: [CharacterSkin] = CharacterSkin.allCases

    var body: some View {
        HStack(spacing: 20.0) {
            ForEach(skinPalette, id: \.self) { skin in
                Circle()
                    .fill(skin.skinColor)
                    .frame(width: 40.0, height: 40.0)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: selected == skin ? 3: 0)
                    )
                    .button {
                        selected = skin
                    }
            }
        }
        .padding()
    }
}

struct HairColorPicker: View {
    @Binding var selected: CharacterHairColor
    let hairColorPalette: [CharacterHairColor] = CharacterHairColor.allCases

    var body: some View {
        HStack(spacing: 20.0) {
//            ForEach(skinPalette, id: \.self) { skin in
//                Circle()
//                    .fill(skin.skinColor)
//                    .frame(width: 40.0, height: 40.0)
//                    .overlay(
//                        Circle()
//                            .stroke(Color.white, lineWidth: selected == skin ? 3: 0)
//                    )
//                    .button {
//                        selected = skin
//                    }
//            }
        }
        .padding()
    }
}

#Preview {
    SkinPicker(selected: .constant(.light))
}
