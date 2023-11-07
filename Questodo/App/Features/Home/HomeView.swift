//
//  HomeView.swift
//  Questodo
//
//  Created by Simon Zwicker on 29.09.23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Asset.Colors.mainBackground.swiftUIColor
                .ignoresSafeArea()

            VStack {
                Text("Test")
                    .font(.system(size: 32, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
            }
            .padding(.top, 160.0)
            .padding()

            VStack {
                ZStack {
                    Asset.Assets.bgForest.swiftUIImage
                        .resizable()
                        .scaledToFit()

                    HStack {
                        ZStack {
                            Asset.Assets.torsoLeatherBrown.swiftUIImage
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100.0)

                            Asset.Characters.Hairs.hairSpikedMGreen.swiftUIImage
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100.0)

                            Asset.Assets.sword.swiftUIImage
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100.0)
                        }
                    }
                    .padding(.top, 100)
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

                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    HomeView()
}

struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack {
            ZStack {
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}
