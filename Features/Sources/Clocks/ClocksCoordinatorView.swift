import SwiftUI

public struct ClocksCoordinatorView: View {
    @ObservedObject private var coordinator: ClocksCoordinator
    
    public init(coordinator: ClocksCoordinator) {
        self.coordinator = coordinator
    }
    
    public var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            ClocksView(interactor: coordinator.clocksInteractor)
                .navigationDestination(for: ClocksCoordinator.Route.self) { route in
                    switch route {
                    case .empty: EmptyView()
                    }
                }
        }
    }
}
