//
//  View.swift
//  Kraudl
//
//  Created by Simon Zwicker on 08.09.23.
//

import SwiftUI

extension View {

    func button(action: @escaping () -> Void) -> some View {
        modifier(ButtonWrapperModifier(action: action))
    }

    #if canImport(UIKit)
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    #endif
}
