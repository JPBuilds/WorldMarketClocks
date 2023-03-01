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
                
                Spacer()
                
                Text(timezone.timezoneTime)
                    .font(.system(size: 36, weight: .medium))
            }
            .padding([.leading, .trailing], 16)
            
            HStack {
                Text(timezone.timezoneDifference)
                    .font(.system(size: 14, weight: .medium))
                
                Spacer()
                
                Text("")
                    .font(.system(size: 14, weight: .medium))
            }
            .padding([.leading, .trailing], 16)
        }
    }
}

