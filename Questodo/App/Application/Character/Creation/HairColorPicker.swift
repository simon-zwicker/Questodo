//
//  HairColorPicker.swift
//  Questodo
//
//  Created by Simon Zwicker on 16.10.23.
//

import SwiftUI

struct HairColorPicker: View {
    @Binding var selected: CharacterHairColor
    let hairColorPalette: [CharacterHairColor] = CharacterHairColor.allCases

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal) {
                HStack(spacing: 20.0) {
                    ForEach(hairColorPalette, id: \.self) { hair in
                        Circle()
                            .fill(hair.hairColor)
                            .frame(width: 40.0, height: 40.0)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: selected == hair ? 3: 0)
                            )
                            .button {
                                selected = hair
                                scrollTo(item: hair, scrollView: proxy)
                            }
                    }
                }
                .padding()
            }
            .scrollIndicators(.hidden)
        }
    }

    func scrollTo(item: CharacterHairColor, scrollView: ScrollViewProxy) {
        withAnimation {
            scrollView.scrollTo(item, anchor: .center)
        }
    }
}

#Preview {
    HairColorPicker(selected: .constant(.ash))
}
