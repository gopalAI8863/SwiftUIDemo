//
//  HorizontalScrollwithrotate3DEffect.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI

struct HorizontalScrollwithrotate3DEffect: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(0..<5){ item in
                        GeometryReader { geometry in
                            RoundedRectangle(cornerRadius: 25.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [.blue,.purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .rotation3DEffect(
                                    Angle(degrees:  Double((geometry.frame(in: .global).minX - 20) / -20)),
                                    axis: (x: 0.0, y: 1.0, z: 0.0),
                                    anchor: .center,
                                    perspective: 1.0
                                )
                        }.frame(width: 300,height: 300)
                }
                }
            }
            .padding()
        }.toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-horizontal-scroll-with-rotate3deffect")
        })
    }
}

#Preview {
    HorizontalScrollwithrotate3DEffect()
}
