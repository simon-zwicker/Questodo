//
//  PreviewColorScheme.swift
//  Kraudl
//
//  Created by Simon Zwicker on 04.09.23.
//

import SwiftUI

struct PreviewColorScheme<Value: View>: View {

    private let view: Value
    init(_ view: Value) { self.view = view }

    var body: some View {
        view.previewDisplayName("Light")
            .previewLayout(.sizeThatFits)
        
        view.preferredColorScheme(.dark).previewDisplayName("Dark")
            .previewLayout(.sizeThatFits)
    }
}
