//
//  Color.swift
//  HaruKit
//
//  Created by dgsw30 on 5/12/25.
//

import SwiftUI

@available(macOS 12, iOS 15, *)
public extension Color {
    init(_ hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

@available(macOS 12, iOS 15, *)
public extension Color {
    init(light: Color, dark: Color? = nil) {
        if let dark = dark {
            self = Color(UIColor { traitCollection in
                traitCollection.userInterfaceStyle == .dark
                ? UIColor(dark)
                : UIColor(light)
            })
        } else {
            self = light
        }
    }
}
