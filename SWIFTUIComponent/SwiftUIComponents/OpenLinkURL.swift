//
//  penLinkURL.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI

struct OpenLinkURL: View {
    var body: some View {
        VStack{
            HStack {
                    Text("You agree to our")

                    Text("Terms")
                    .foregroundStyle(.blue)
                            .onTapGesture {
                                     UIApplication.shared.open(URL(string: "https://designcode.io/terms")!)
                            }

                    Text("and")

                    Text("Privacy policy")
                    .foregroundStyle(.blue)
                            .onTapGesture {
                                     UIApplication.shared.open(URL(string: "https://designcode.io/privacy")!)
                            }

                    Text(".")
            }
        }.toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-link-from-a-text")
        })
    }
}

#Preview {
    OpenLinkURL()
}
