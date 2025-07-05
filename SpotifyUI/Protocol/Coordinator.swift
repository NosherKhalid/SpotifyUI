//
//  Coordinator.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 7/3/25.
//

import SwiftUI
import Combine

class Coordinator: ObservableObject {
    @Published var path: NavigationPath = NavigationPath()
    
    func push(_ page: AppPages) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(_ page: AppPages) -> some View {
        switch page {
            case .signup:
            SignUpView()
        }
    }
}
