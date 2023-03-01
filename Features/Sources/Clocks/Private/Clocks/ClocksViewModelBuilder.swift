import Foundation

class ClocksViewModelBuilder {
    func build(state: ClocksInteractor.State) -> ClocksViewModel {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        
        var markets: [ClocksViewModel.Timezone] = []
        for market in state.markets {
            let timezoneNameComponents = market.identifier.components(separatedBy: "/")
            dateFormatter.timeZone = market
            
            let showDivider = market != state.markets.last
            
            markets.append(ClocksViewModel.Timezone(
                timezoneName: timezoneNameComponents.last ?? "",
                timezoneTime: dateFormatter.string(from: Date()),
                timezoneDifference: "FAKE +?",
                isMarketOpen: false,
                showDivider: showDivider
            ))
        }
        
        var timezones: [ClocksViewModel.Timezone] = []
        for timezone in state.timezones {
            let timezoneNameComponents = timezone.identifier.components(separatedBy: "/")
            dateFormatter.timeZone = timezone
            
            let showDivider = timezone != state.timezones.last
            
            timezones.append(ClocksViewModel.Timezone(
                timezoneName: timezoneNameComponents.last ?? "",
                timezoneTime: dateFormatter.string(from: Date()),
                timezoneDifference: "FAKE +?",
                isMarketOpen: false,
                showDivider: showDivider
            ))
        }
        
        return ClocksViewModel(
            markets: markets,
            timeszones: timezones
        )
    }
}
