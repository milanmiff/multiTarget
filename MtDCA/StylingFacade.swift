//
//  StylingFacade.swift
//  MultitargetTest
//
//  Created by Milan Djordjevic on 29/11/2023.
//

import UIKit
import SwiftUI

protocol StylingFacadeType {
    func use(ofSize: CGFloat, weight: UIFont.Weight) -> UIFont
}

enum TargetFonts: String {
    case KIT, MtDCA, ModernUI = "Modern UI" // This is...
}

@objc
final class StylingFacade: NSObject, StylingFacadeType {
    func use(ofSize: CGFloat = 15, weight: UIFont.Weight = .regular) -> UIFont {
        var targetFont: TargetFonts = .MtDCA
        if let bundleName = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            if let name = TargetFonts(rawValue: bundleName) {
                targetFont = name
            }
        }
        
        switch targetFont {
        case .KIT:
            return UIFont(name: "Dosis-Regular", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: weight)
        case .MtDCA:
            return UIFont(name: "MuseoSans-300", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: weight)
        case .ModernUI:
            return UIFont(name: "Lato-Regular", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: weight)
        }
    }
    
    func use(ofSize: CGFloat = 15, weight: Font.Weight = .regular) -> Font {
        var targetFont: TargetFonts = .MtDCA
        if let bundleName = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            print(bundleName)
            if let name = TargetFonts(rawValue: bundleName) {
                targetFont = name
            }
        }
        
        switch targetFont {
        case .KIT:
            return .custom("Dosis-Regular", size: ofSize)
        case .MtDCA:
            return .custom("MuseoSans-300", size: ofSize)
        case .ModernUI:
            return .custom("Lato-Regular", size: ofSize)
        }
    }
}
