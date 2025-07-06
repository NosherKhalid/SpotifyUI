//
//  PlaylistCard.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 7/6/25.
//

import SwiftUI

struct PlaylistCard: View {
    
    var playlist: Playlist
    
    var body: some View {
        ZStack {
            Color(UIColor.darkGray)
            HStack {
                Image(playlist.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(playlist.title)
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.horizontal, 8)
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PlaylistCard(playlist: Playlist(title: "Chill Mix", imageName: "chillmix"))
        .padding(10)
        .background(Color.black)
}
