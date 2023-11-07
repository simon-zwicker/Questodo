//
//  ColorPicker.swift
//  Questodo
//
//  Created by Simon Zwicker on 07.10.23.
//

import SwiftUI
import ComposableArchitecture

struct ColorPickerView: View {

    // MARK: - Store
    let store: StoreOf<ColorPickerFeature>

    // MARK: ViewState
    struct ViewState: Equatable {
        let title: String
        let palette: [Color]
        @BindingViewState var selected: Color

        init(state: BindingViewStore<ColorPickerFeature.State>) {
            title = state.title
            palette = state.palette
            _selected = state.$selectedColor
        }
    }

    // MARK: - Body
    var body: some View {
        WithViewStore(store, observe: ViewState.init) { viewStore in
            VStack(alignment: .leading, spacing: 5.0) {
                Text(viewStore.title)
                    .font(.Bold.regular)
                    .foregroundStyle(.textNormal)
                    .padding(.leading, 15.0)

                ScrollViewReader { proxy in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 1.0) {
                            ForEach(viewStore.palette, id: \.self) { color in
                                Circle()
                                    .fill(color)
                                    .frame(width: 40.0, height: 40.0)
                                    .overlay(
                                        Circle()
                                            .stroke(
                                                Color.white,
                                                lineWidth: viewStore.selected == color ? 3: 0
                                            )
                                    )
                                    .button {
                                        viewStore.send(.colorTapped(color))
                                        self.scrollToCenter(item: color, proxy: proxy)
                                    }
                            }
                            .padding()
                        }
                    }
                }
            }
        }
    }

    private func scrollToCenter(item: Color, proxy: ScrollViewProxy) {
        withAnimation {
            proxy.scrollTo(item, anchor: .center)
        }
    }
}

#Preview {
    let store = Store(
        initialState: ColorPickerFeature.State(
            title: "Haircolor",
            selectedColor: CharacterHairColor.ash.hairColor,
            palette: CharacterHairColor.allCases.compactMap { $0.hairColor }
        ),
        reducer: ColorPickerFeature.init
    )
    return PreviewColorScheme(ColorPickerView(store: store))
}
