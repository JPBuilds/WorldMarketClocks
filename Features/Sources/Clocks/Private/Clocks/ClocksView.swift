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
            ScrollView {
                Text("Hello")
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}

