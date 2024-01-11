//
//  PlayVideowithAVPlayer.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI
import AVKit
struct PlayVideowithAVPlayer: View {
    @State var player = AVPlayer()
    var videoUrl = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
    var body: some View {
        VideoPlayer(player: player)
            .onAppear(){
                player = AVPlayer(url: URL(string: videoUrl)!)
                player.play()
            }
            .toolbar(content: {
                CustomLinkView(link: "https://designcode.io/swiftui-handbook-play-video-with-avplayer")
            })
    }
}

#Preview {
    PlayVideowithAVPlayer()
}
