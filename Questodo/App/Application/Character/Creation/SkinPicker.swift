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
        ScrollViewReader { proxy in
            ScrollView(.horizontal) {
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
                                scrollTo(item: skin, scrollView: proxy)
                            }
                    }
                }
                .padding()
            }
        }
    }

    private func scrollTo(item: CharacterSkin, scrollView: ScrollViewProxy) {
        withAnimation {
            scrollView.scrollTo(item, anchor: .center)
        }
    }
}

#Preview {
    SkinPicker(selected: .constant(.light))
}
