//
//  HomeView.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 7/6/25.
//

import SwiftUI

struct HomeView: View {
    
    let viewModel: HomeViewModel
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(viewModel.playlists) { playlist in
                    PlaylistCard(playlist: playlist)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
