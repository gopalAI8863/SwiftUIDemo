//
//  CustomLinkView.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI

struct CustomLinkView: View {
    let link: String
    var body: some View {
        Link(destination: URL(string: link)!) {
            Image(systemName: "link")
                .resizable()
                .frame(width: 32, height: 32)
//                .background(Color.blue)
                .mask(Circle())
//                .foregroundColor(.white)
        }
    }
}

#Preview {
    CustomLinkView(link: "")
}
