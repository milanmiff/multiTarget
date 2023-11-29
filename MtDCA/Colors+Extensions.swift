//
//  Colors+Extensions.swift
//  MultitargetTest
//
//  Created by Milan Djordjevic on 27/07/2023.
//

import UIKit
import SwiftUI

enum ColorName: String {
    case Main, Primary, TitleLabelColor
}

extension Color {
    static func paint(_ name: ColorName) -> Color {
        .init(name.rawValue)
    }
}

extension UIColor {
    static func paint(_ name: ColorName) -> UIColor {
        UIColor(named: name.rawValue) ?? .main
    }
}
