//
//  Color.swift
//  Questodo
//
//  Created by Simon Zwicker on 06.10.23.
//

import SwiftUI

extension Color {
    static func == (lhs: Color, rhs: Color) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
