import SwiftUI

@available(macOS 12, iOS 15, *)
public struct CustomFont {
    public enum Weight: String, CaseIterable, Sendable {
        case semiBold = "Pretendard-SemiBold"
        case extraBold = "Pretendard-ExtraBold"
        case bold = "Pretendard-Bold"
        case extraLight = "Pretendard-ExtraLight"
        case light = "Pretendard-Light"
        case medium = "Pretendard-Medium"
        case thin = "Pretendard-Thin"
        //MARK: sono
        case sonoLight = "Sono-Light"
        case sonoMedium = "Sono-Medium"
    }
    
    public static func register() {
        CustomFont.Weight.allCases.forEach {
            if let fontURL = Bundle.module.url(forResource: $0.rawValue, withExtension: "ttf"),
               let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
               let font = CGFont(fontDataProvider) {
                var error: Unmanaged<CFError>?
                CTFontManagerRegisterGraphicsFont(font, &error)
            }
        }
    }
}

