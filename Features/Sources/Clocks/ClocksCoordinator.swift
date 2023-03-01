import SwiftUI

public protocol ClocksCoordinatorDelegate: AnyObject {
    
}

public class ClocksCoordinator: ObservableObject {
    enum Route: Hashable {
        case empty
    }
    
    // MARK: - Public Properties
    
    weak var delegate: ClocksCoordinatorDelegate?
    
    @Published var navigationPath: [Route] = [] {
        didSet {
            
        }
    }
    
    lazy var clocksInteractor: ClocksInteractor = {
        let interactor = ClocksInteractor()
        interactor.delegate = self
        return interactor
    }()
    
    // MARK: - Public Functions
    
    public init() {
        
    }
}

extension ClocksCoordinator: ClocksInteractorDelegate {
    
}
