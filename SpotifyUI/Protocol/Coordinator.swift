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
    @Published var isAuthenticated: Bool = AppStorageManager.shared.isAuthenticated
    
    init() {
        isAuthenticated = AppStorageManager.shared.isAuthenticated
    }
    
    func push(_ page: AppPages) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func loginSuccess() {
        isAuthenticated = true
        AppStorageManager.shared.isAuthenticated = true
        path = NavigationPath()
    }
    
    @ViewBuilder
    func build(_ page: AppPages) -> some View {
        switch page {
            case .signup:
            SignUpView()
        }
    }
}
