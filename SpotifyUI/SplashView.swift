//
//  ContentView.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 6/25/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            LinearGradient(stops: [
                .init(color: .green, location: 0.001),
                .init(color: .black, location: 0.50)
            ], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            SpotifyLogo()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    SplashView()
}
