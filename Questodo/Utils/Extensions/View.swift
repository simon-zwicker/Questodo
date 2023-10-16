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
}
