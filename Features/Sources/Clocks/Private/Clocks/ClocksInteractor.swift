import Foundation
import SwiftUI

protocol ClocksInteractorDelegate: AnyObject {
    
}

class ClocksInteractor: ObservableObject {
    struct State {
        var markets: [TimeZone] = [
            TimeZone(identifier: "Europe/Paris")!,
            TimeZone(identifier: "America/Argentina/Buenos_Aires")!,
        ]
        var timezones: [TimeZone] = [
            TimeZone(identifier: "Indian/Chagos")!,
            TimeZone(identifier: "Pacific/Bougainville")!,
            TimeZone(identifier: "Australia/Brisbane")!
        ]
    }
    
    // MARK: - Public Properties

    weak var delegate: ClocksInteractorDelegate?
    @Published private(set) var viewModel: ClocksViewModel
    
    // MARK: - Private Properties
    
    private var state: State = State()
    private let viewModelBuilder: ClocksViewModelBuilder
    
    // MARK: - Public Functions
    
    init(viewModelBuilder: ClocksViewModelBuilder = .init()) {
        self.viewModelBuilder = viewModelBuilder
        
        self.viewModel = viewModelBuilder.build(state: state)
    }
}
