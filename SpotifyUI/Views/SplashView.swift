//
//  ContentView.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 6/25/25.
//

import SwiftUI

struct SplashView: View {
    
    @State var shouldLoad = false
    
    var body: some View {
        ZStack {
            if shouldLoad {
                SignUpView()
            } else {
                BackgroundView()
                SpotifyLogo()
                    .frame(width: 200, height: 200)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    shouldLoad = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
