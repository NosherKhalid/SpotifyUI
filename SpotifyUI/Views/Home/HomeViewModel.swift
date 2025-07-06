//
//  HomeViewModel.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 7/6/25.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var playlists: [Playlist] = []
    
    init() {
        playlists = Playlist.playlist.shuffled()
    }
}
