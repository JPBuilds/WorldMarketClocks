struct ClocksViewModel: Equatable {
    struct Timezone: Equatable, Hashable {
        let timezoneName: String
        let timezoneTime: String
        let timezoneDifference: String
        let isMarketOpen: Bool
        let showDivider: Bool
    }
    
    let markets: [Timezone]
    let timeszones: [Timezone]
}
