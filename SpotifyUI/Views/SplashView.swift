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
            BackgroundView()
            SpotifyLogo()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    SplashView()
}
