//
//  CoordinatorView.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 7/5/25.
//

import SwiftUI

struct CoordinatorView: View {
    
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(.signup)
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
