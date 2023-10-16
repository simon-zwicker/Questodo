//
//  TodoView.swift
//  Questodo
//
//  Created by Simon Zwicker on 04.10.23.
//

import SwiftUI
import ComposableArchitecture

struct TodoView: View {

    // MARK: - Store
    let store: StoreOf<TodoFeature>

    // MARK: - Body
    var body: some View {
        ZStack {
            Asset.Colors.mainBackground.swiftUIColor
                .ignoresSafeArea()

            VStack(alignment: .leading) {
                MainHeaderView(store: .init(initialState: .init(), reducer: MainHeaderFeature.init))

                VStack {
                    Text("Header")
                        .font(.Bold.heading1)
                }
                .padding()

                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        let store = Store(initialState: .init(), reducer: TodoFeature.init)
        return PreviewColorScheme(TodoView(store: store))
    }
}
