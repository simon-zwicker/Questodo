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

            VStack(spacing: 20.0) {
                ZStack {
                    Asset.Assets.bgForest.swiftUIImage
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()

                    VStack {
                        Spacer()
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.mainBackground)
                                .font(.Bold.big)
                                .button {
                                    character.hair.form = character.hair.form.previous
                                }
                                .offset(y: -30.0)

                            VStack {
                                CharacterView(character: $character)
                                    .frame(height: 150.0)
                                    .offset(y: -5.0)
                            }

                            Image(systemName: "chevron.right")
                                .foregroundColor(.mainBackground)
                                .font(.Bold.big)
                                .button {
                                    character.hair.form = character.hair.form.next
                                }
                                .offset(y: -30.0)
                        }
                    }
                }
                .frame(maxWidth: UIScreen.main.bounds.width, minHeight: 100.0, maxHeight: 100.0)

                VStack {
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("Skin color")
                            .font(.Bold.regular)
                            .foregroundStyle(.textNormal)
                            .padding(.leading, 15.0)
                        SkinPicker(selected: $character.skin)
                    }

                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("Haircolor")
                            .font(.Bold.regular)
                            .foregroundStyle(.textNormal)
                            .padding(.leading, 15.0)
                        HairColorPicker(selected: $character.hair.color)
                    }

                    Divider()

                    VStack(alignment: .leading) {
                        Text("Playername")
                            .font(.Bold.regular)
                            .foregroundStyle(.textNormal)

                        TextField("Enter Name", text: $character.name)
                            .font(.Bold.big)
                    }
                    .padding()

                    Spacer()

                    HStack {
                        Asset.Assets.swordButton.swiftUIImage
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20.0)
                            .padding(.leading, 15.0)

                        Text("Start Adventure")
                            .foregroundColor(.mainBackground)
                            .font(.Bold.regular)
                            .padding(.vertical, 15.0)

                        Asset.Assets.swordButton.swiftUIImage
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20.0)
                            .padding(.trailing, 15.0)
                    }
                    .background(Color.textNormal)
                    .cornerRadius(10.0)
                    .button {
                        character.gender = character.gender == "m" ? "f": "m"
                    }
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 20.0)
                }
                .padding(.top, 60.0)
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
}

#Preview {
    CharacterCreationView(character: .init())
}
