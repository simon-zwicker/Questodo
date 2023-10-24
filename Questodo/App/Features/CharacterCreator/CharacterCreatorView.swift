//
//  CharacterCreatorView.swift
//  Questodo
//
//  Created by Simon Zwicker on 05.10.23.
//

import SwiftUI
import ComposableArchitecture

struct CharacterCreatorView: View {

    // MARK: - Store
    let store: StoreOf<CharacterCreatorFeature>

    // MARK: - Body
    var body: some View {
        ZStack {
            Color.mainBackground.ignoresSafeArea()

            WithViewStore(store, observe: { $0 }) { viewStore in
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
                                    .foregroundColor(.textBeige)
                                    .font(.Bold.big)
                                    .button {
                                        viewStore.send(.previousHair)
                                    }
                                    .offset(y: -30.0)

                                VStack {
                                    CharacterView(store: store.scope(
                                        state: \.myCharacter,
                                        action: CharacterCreatorFeature.Action.myCharacter
                                    ))
                                    .frame(height: 150.0)
                                }

                                Image(systemName: "chevron.right")
                                    .foregroundColor(.textBeige)
                                    .font(.Bold.big)
                                    .button {
                                        viewStore.send(.nextHair)
                                    }
                                    .offset(y: -30.0)
                            }
                        }
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width, minHeight: 100.0, maxHeight: 100.0)

                    VStack {
                        VStack(spacing: 5.0) {
                            Text("Change Body Type")
                                .foregroundColor(.primaryButtonText)
                                .font(.Bold.regular)
                        }
                        .padding(.bottom, 30)
                        .button {
                            viewStore.send(.changeBodyType)
                        }

                        ColorPickerView(store: store.scope(
                            state: \.skinColorPicker,
                            action: CharacterCreatorFeature.Action.skinColor
                        ))

                        ColorPickerView(store: store.scope(
                            state: \.hairColorPicker,
                            action: CharacterCreatorFeature.Action.hairColor
                        ))

                        Spacer()
                    }
                    .padding(.top, 60.0)
                }
            }
        }
    }
}

#Preview {
    let store = Store(initialState: .init(), reducer: CharacterCreatorFeature.init)
    return CharacterCreatorView(store: store)
}
