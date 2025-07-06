//
//  SignUpView.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 6/27/25.
//

import SwiftUI

struct SignUpView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            VStack(spacing: 24) {
                Spacer()
                SpotifyLogo()
                    .frame(width: 100, height: 50)
                VStack(spacing: 0) {
                    Text("Millions of Songs")
                        .font(.custom("Lufga-Medium", size: 40))
                    Text("Free on Spotify.")
                        .font(.custom("Lufga-Medium", size: 38))
                }
                .foregroundStyle(.white)
                
                Button("Sign up Free"){
                    coordinator.loginSuccess()
                }
                    .frame(maxWidth: .infinity, minHeight: 44)
                    .foregroundStyle(.black)
                    .font(.custom("Lufga-Regular", size: 14))
                    .background(.spotifyGreen)
                    .clipShape(Capsule())
                    .padding(.horizontal)
                Text("Or")
                    .font(.custom("Lufga-Medium", size: 14))
                    .foregroundStyle(.spotifyGrey)
                VStack {
                    // Google
                    Button(action: {
                        // Your sign-in logic here
                    }) {
                        HStack {
                            Image("google")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("Sign in with Google")
                                .foregroundStyle(.white)
                                .font(.custom("Lufga-Regular", size: 14))
                        }
                    }
                        .frame(maxWidth: .infinity, minHeight: 44)
                        .background(Color(UIColor.darkGray))
                        .clipShape(Capsule())
                        .padding(.horizontal)
                    
                    //Apple
                    Button(action: {
                        // Your sign-in logic here
                    }) {
                        HStack {
                            Image(systemName: "apple.logo")
                                .resizable()
                                .tint(.white)
                                .frame(width: 24, height: 24)
                            Text("Sign in with Apple")
                                .foregroundStyle(.white)
                                .font(.custom("Lufga-Regular", size: 14))
                        }
                    }
                        .frame(maxWidth: .infinity, minHeight: 44)
                        .background(Color(UIColor.darkGray))
                        .clipShape(Capsule())
                        .padding(.horizontal)
                }
                
                HStack {
                    Text("Have an account?")
                        .font(.custom("Lufga-Regular", size: 14))
                    Text("Log in")
                        .font(.custom("Lufga-Bold", size: 14))
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    SignUpView()
}
