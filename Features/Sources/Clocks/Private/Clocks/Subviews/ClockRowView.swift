import DesignSystem
import SwiftUI

struct ClockRowView: View {
    private let timezone: ClocksViewModel.Timezone
    init(timezone: ClocksViewModel.Timezone) {
        self.timezone = timezone
    }
    
    var body: some View {
        VStack(spacing: 0) {
            contentView
            
            Spacer().frame(height: 16)
            
            if timezone.showDivider {
                Divider()
                    .padding([.leading], 32)
            }
        }
    }
}

extension ClockRowView {
    private var contentView: some View {
        VStack(spacing: 2) {
            HStack {
                Text(timezone.timezoneName)
                    .font(.system(size: 36, weight: .medium))
                    .foregroundColor(.text_primary)
                
                Spacer()
                
                Text(timezone.timezoneTime)
                    .font(.system(size: 36, weight: .medium))
                    .foregroundColor(.text_primary)
            }
            .padding([.leading, .trailing], 16)
            
            HStack {
                Text(timezone.timezoneDifference)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.text_secondary)
                
                Spacer()
                
                HStack(spacing: 4) {
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(.theme_primary)
                    
                    Text("Market Open")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.theme_primary)
                }
            }
            .padding([.leading, .trailing], 16)
        }
    }
}

