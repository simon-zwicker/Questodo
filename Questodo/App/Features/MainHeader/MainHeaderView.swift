//
//  MainHeaderView.swift
//  Questodo
//
//  Created by Simon Zwicker on 04.10.23.
//

import SwiftUI
import ComposableArchitecture

struct MainHeaderView: View {

    // MARK: - Store
    let store: StoreOf<MainHeaderFeature>

    // MARK: - Body
    var body: some View {
        ZStack {
            Asset.Assets.bgGras.swiftUIImage
                .resizable()
                .scaledToFill()
        }
        .mask(
            LinearGradient(gradient: Gradient(colors: [
                Color.black,
                Color.black,
                Color.black,
                Color.black,
                Color.black,
                Color.black,
                Color.black,
                Color.black,
                Color.black,
                Color.black,
                Color.black.opacity(0)
            ]), startPoint: .top, endPoint: .bottom)
        )
        .frame(maxWidth: UIScreen.main.bounds.width, minHeight: 250.0, maxHeight: 250.0)
        .ignoresSafeArea()
    }
}

#Preview {
    let store = Store(initialState: .init(), reducer: MainHeaderFeature.init)
    return PreviewColorScheme(MainHeaderView(store: store))
}
