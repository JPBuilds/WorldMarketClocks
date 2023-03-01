import SwiftUI

struct ClocksView: View {
    @ObservedObject private var interactor: ClocksInteractor
    private var viewModel: ClocksViewModel {
        return interactor.viewModel
    }
    
    init(interactor: ClocksInteractor) {
        self.interactor = interactor
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color(.white)
                    .ignoresSafeArea(edges: [.top, .bottom])
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("World Clocks")
                            .font(.system(size: 36, weight: .semibold))
                            .padding([.leading, .trailing], 16)
                            .padding([.top], 8)
                            .padding([.bottom], 16)
                        
                        marketSection
                        
                        timezoneSection
                    }
                }
            }
        }
    }
}

extension ClocksView {
    private var marketSection: some View {
        LazyVStack(alignment: .center, spacing: 16) {
            VStack {
                HStack() {
                    Text("Markets")
                        .font(.system(size: 20, weight: .medium))
                    
                    Spacer()
                }
                
                Divider()
            }
            .padding([.leading], 16)
            
            ForEach(viewModel.markets, id: \.self) { market in
                ClockRowView(timezone: market)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding([.top], 8)
        .padding([.bottom], 16)
    }
    
    private var timezoneSection: some View {
        LazyVStack(alignment: .center, spacing: 16) {
            VStack {
                HStack() {
                    Text("Timezones")
                        .font(.system(size: 20, weight: .medium))
                    
                    Spacer()
                }
                
                Divider()
            }
            .padding([.leading], 16)
            
            ForEach(viewModel.timeszones, id: \.self) { timezone in
                ClockRowView(timezone: timezone)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding([.top], 8)
        .padding([.bottom], 16)
    }
}

struct ClocksView_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = ClocksInteractor()
        ClocksView(interactor: interactor)
    }
}


