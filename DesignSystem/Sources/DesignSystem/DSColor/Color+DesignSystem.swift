import SwiftUI

public extension Color {
    static let theme_primary = Color(hex: 0xFFA800)
    
    static let text_primary = Color(hex: 0x171D21)
    static let text_secondary = Color(hex: 0x6D747B)
}

extension Color {
    init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(
            .sRGB,
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255,
            blue:  CGFloat(blue) / 255,
            opacity: 1
        )
    }

    init(hex: Int) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF
        )
    }
}
