import UIKit
import SwiftUI

public enum DSColor: Equatable {
    case theme_primary
    
    case text_primary
    case text_secondary
}

public extension DSColor {
    var color: Color {
        switch self {
        case .theme_primary: return .theme_primary
            
        case .text_primary: return .text_primary
        case .text_secondary: return .text_secondary
        }
    }
}
