//
//  OpenWithLink.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct OpenWithLink: View {
    var body: some View {
        VStack{
            Link("Design+Code",
                  destination: URL(string: "https://designcode.io/swiftui-handbook-links")!)
                        .font(.title)
                        .foregroundColor(.purple)
            
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-links")

        }.toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-links")
        })
    }
}

#Preview {
    OpenWithLink()
}
