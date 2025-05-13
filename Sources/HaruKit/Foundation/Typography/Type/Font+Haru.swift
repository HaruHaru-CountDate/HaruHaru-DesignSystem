import SwiftUI

@available(macOS 12, iOS 15, *)
public extension Font {
    static func customFont(weight: CustomFont.Weight, size: CGFloat) -> Font {
        Font.custom(weight.rawValue, size: size)
    }
    
    static func bold(size: CGFloat) -> Font {
        customFont(weight: .bold, size: size)
    }
    
    static func extraBold(size: CGFloat) -> Font {
        customFont(weight: .extraBold, size: size)
    }
    
    static func semiBold(size: CGFloat) -> Font {
        customFont(weight: .semiBold, size: size)
    }
    
    static func light(size: CGFloat) -> Font {
        customFont(weight: .light, size: size)
    }
    
    static func extraLight(size: CGFloat) -> Font {
        customFont(weight: .extraLight, size: size)
    }
    
    static func medium(size: CGFloat) -> Font {
        customFont(weight: .medium, size: size)
    }
    
    static func thin(size: CGFloat) -> Font {
        customFont(weight: .thin, size: size)
    }
    
    static func date(size: CGFloat) -> Font {
        customFont(weight: .date, size: size)
    }
}
