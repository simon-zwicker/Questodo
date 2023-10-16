//
//  ButtonWrapperModifier.swift
//  Kraudl
//
//  Created by Simon Zwicker on 08.09.23.
//

import SwiftUI

struct ButtonWrapperModifier: ViewModifier {

    var action: () -> Void

    func body(content: Content) -> some View {
        Button { action() } label: { content }
    }
}
