//
//  Metrics.swift
//  myBibs
//
//  Created by Alaene Rufino de Sousa on 19/04/20.
//  Copyright © 2020 Alaene Rufino de Sousa. All rights reserved.
//

import UIKit

enum Metrics {
    enum Grid {
        static let tiny: CGFloat = 4
        static let small: CGFloat = 8
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
        static let huge: CGFloat = 32
    }

    enum Button {
        static let height: CGFloat = 48
        static let heightSmall: CGFloat = 32
        static let width: CGFloat = 220
        static let titleButton: CGFloat = 44
        static let margin: CGFloat = 40
    }

    enum Spacing {
        static let tiny: CGFloat = 4
        static let small: CGFloat = 8
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
        static let huge: CGFloat = 32
        static let bigger: CGFloat = 40
    }

    enum Layer {
        static let cornerRadiusTiny: CGFloat = 4
        static let cornerRadius: CGFloat = 8
        static let cornerRadiusBigger: CGFloat = 22
    }

    enum FontSize {
        static let tiny: CGFloat = 14
        static let small: CGFloat = 16
        static let medium: CGFloat = 18
        static let large: CGFloat = 22
        static let huge: CGFloat = 24
        static let extraHuge: CGFloat = 32
    }
}
