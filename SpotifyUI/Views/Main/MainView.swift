//
//  MainTabView.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 7/6/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView(viewModel: HomeViewModel())
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            LibraryView()
                .tabItem {
                    Label("Your Library", systemImage: "books.vertical")
                }
            
            CreatePlaylistView()
                .tabItem {
                    Label("Create", systemImage: "plus")
                }
        }
    }
}

#Preview {
    MainView()
}
