//
//  Playlist.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 7/6/25.
//

import Foundation

struct Playlist: Identifiable {
    let id: UUID = UUID()
    let title: String
    let imageName: String
    
   static var playlist: [Playlist] = [
        Playlist(title: "Chill Mix", imageName: "chillmix"),
           Playlist(title: "Daily Drive", imageName: "dailydrive"),
           Playlist(title: "Top Hits", imageName: "tophits"),
           Playlist(title: "Acoustic Vibes", imageName: "acousticvibes")
    ]
}

