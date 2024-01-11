//
//  AnimationRepeatDelayandSpeed.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI

struct AnimationRepeatDelayandSpeed: View {
    @State var appear = false

      var body: some View {
          VStack{
              Circle()
                  .trim(from: 0.2, to: 1)
                  .stroke(Color.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                  .frame(width: 44, height: 44)
                  .rotationEffect(Angle(degrees: appear ? 360 : 0))
                  .onAppear {
                      withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                          appear = true
                      }
                      
                  }
          }.toolbar(content: {
              CustomLinkView(link: "https://designcode.io/swiftui-handbook-horizontal-animation-repeat-delay-and-speed")
          })
      }
}

#Preview {
    AnimationRepeatDelayandSpeed()
}
