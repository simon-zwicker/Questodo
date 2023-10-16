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
        /// Size 24
        static let big = Font.system(size: 24)
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
        /// Size 24
        static let big = Font.system(size: 24, weight: .bold)
        /// Size 32
        static let heading1 = Font.system(size: 32, weight: .bold)
    }

//    enum Semi {
//        /// Size 12
//        static let small = Font.system(size: 12, weight: .semibold)
//        /// Size 16
//        static let regular = Font.system(size: 16, weight: .semibold)
//        /// Size 14
//        static let body = Font.system(size: 14, weight: .semibold)
//        /// Size 18
//        static let title = Font.system(size: 18, weight: .semibold)
//        /// Size 24
//        static let big = Font.system(size: 24, weight: .semibold)
//        /// Size 32
//        static let heading1 = Font.system(size: 32, weight: .semibold)
//    }
//
//    enum Black {
//        /// Size 12
//        static let small = Font.system(size: 12, weight: .black)
//        /// Size 16
//        static let regular = Font.system(size: 16, weight: .black)
//        /// Size 14
//        static let body = Font.system(size: 14, weight: .black)
//        /// Size 18
//        static let title = Font.system(size: 18, weight: .black)
//        /// Size 24
//        static let big = Font.system(size: 24, weight: .black)
//        /// Size 32
//        static let heading1 = Font.system(size: 32, weight: .black)
//    }
//
//    enum Light {
//        /// Size 12
//        static let small = Font.system(size: 12, weight: .light)
//        /// Size 16
//        static let regular = Font.system(size: 16, weight: .light)
//        /// Size 14
//        static let body = Font.system(size: 14, weight: .light)
//        /// Size 18
//        static let title = Font.system(size: 18, weight: .light)
//        /// Size 24
//        static let big = Font.system(size: 24, weight: .light)
//        /// Size 32
//        static let heading1 = Font.system(size: 32, weight: .light)
//    }
}
