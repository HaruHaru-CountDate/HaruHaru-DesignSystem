import SwiftUI

@available(macOS 12, iOS 15, *)
public extension Image {
    init(image: Iconography) {
        self = Image(image.rawValue, bundle: .module)
    }
}
