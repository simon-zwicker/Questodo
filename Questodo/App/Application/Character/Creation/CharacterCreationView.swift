//
//  CharacterCreationView.swift
//  Questodo
//
//  Created by Simon Zwicker on 14.10.23.
//

import SwiftUI

struct CharacterCreationView: View {
    @State var character: CharacterModel

    var body: some View {
        ZStack {
            Color.mainBackground.ignoresSafeArea()

            VStack(spacing: 40.0) {

                VStack(spacing: 5.0) {
                    Text("Choose a Skin Color")
                        .font(.Reg.small)
                        .foregroundStyle(.textNormal)
                    SkinPicker(selected: $character.skin)
                }

                ZStack {
                    Asset.Assets.bgForest.swiftUIImage
                        .resizable()
                        .scaledToFill()
                        .clipped()

                    CharacterView(character: $character)
                        .frame(height: 150.0)
                        .offset(y: 20.0)
                }
                .frame(height: 200.0)
                .cornerRadius(20.0)

                Spacer()

                Text("Save Character")
                    .foregroundColor(.white)
                    .font(.Bold.big)
                    .padding()
                    .background(Color.brown)
                    .cornerRadius(10.0)
                    .button {
                        character.save()
                    }
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding()
        }
    }
}

#Preview {
    CharacterCreationView(character: .init())
}
