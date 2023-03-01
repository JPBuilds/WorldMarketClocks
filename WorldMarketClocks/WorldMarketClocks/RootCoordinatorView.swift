import SwiftUI
import Clocks

@main
struct RootCoordinatorView: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    let clocksCoordinator: ClocksCoordinator = {
        let coordinator = ClocksCoordinator()
        return coordinator
    }()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                ClocksCoordinatorView(coordinator: self.clocksCoordinator)
                    .tabItem {
                        Label("Menu", systemImage: "list.dash")
                    }
            }
        }
    }
}
