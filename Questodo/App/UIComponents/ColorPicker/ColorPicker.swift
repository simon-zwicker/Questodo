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

    // MARK: - Body
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            HStack(spacing: 20) {
                ForEach(viewStore.colorPalette, id: \.self) { color in
                    Button(action: {
                        viewStore.send(.colorTapped(color))
                    }) {
                        Circle()
                            .fill(color)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: viewStore.selectedColor == color ? 3 : 0)
                            )
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    let store = Store(initialState: .init(selectedColor: Asset.Colors.Character.Skin.sLight.swiftUIColor), reducer: ColorPickerFeature.init)
    return PreviewColorScheme(ColorPickerView(store: store))
}
