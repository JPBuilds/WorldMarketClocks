import SwiftUI

protocol ClocksInteractorDelegate: AnyObject {
    
}

class ClocksInteractor: ObservableObject {
    struct State {
        
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
