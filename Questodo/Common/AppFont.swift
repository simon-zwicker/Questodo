//
//  AppFont.swift
//  Kraudl
//
//  Created by Simon Zwicker on 08.09.23.
//

import SwiftUI

extension SwiftUI.Font {
    enum Reg {
        /// Size 12
        static let small = Font.system(size: 12)
        /// Size 16
        static let regular = Font.system(size: 16)
        /// Size 14
        static let body = Font.system(size: 14)
        /// Size 18
        static let title = Font.system(size: 18)
        /// Size 20
        static let title2 = Font.system(size: 20)
        /// Size 22
        static let title3 = Font.system(size: 22)
        /// Size 24
        static let title4 = Font.system(size: 24)
        /// Size 32
        static let heading1 = Font.system(size: 32)
    }

    enum Bold {
        /// Size 12
        static let small = Font.system(size: 12, weight: .bold)
        /// Size 16
        static let regular = Font.system(size: 16, weight: .bold)
        /// Size 14
        static let body = Font.system(size: 14, weight: .bold)
        /// Size 18
        static let title = Font.system(size: 18, weight: .bold)
        /// Size 20
        static let title2 = Font.system(size: 20, weight: .bold)
        /// Size 22
        static let title3 = Font.system(size: 22, weight: .bold)
        /// Size 24
        static let title4 = Font.system(size: 24, weight: .bold)
        /// Size 32
        static let heading1 = Font.system(size: 32, weight: .bold)
    }
}
