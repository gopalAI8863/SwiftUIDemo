//
//  ClipShapeAndSmoothCorners.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct ClipShapeAndSmoothCorners: View {
    var body: some View {
        ZStack{
            Color.pink.ignoresSafeArea()
            VStack{
                Text("SwiftUI ios 17")
            }
            .frame(width: 300,height: 300)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        }.toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-clip-shape")
        })
    }
}

#Preview {
    ClipShapeAndSmoothCorners()
}
