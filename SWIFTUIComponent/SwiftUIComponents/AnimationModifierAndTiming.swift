//
//  AnimationModifierAndTiming.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct AnimationModifierAndTiming: View {
    @State var show = false
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
                .opacity(show ? 0.8 : 0.2)
            RoundedRectangle(cornerRadius: 40)
                .foregroundColor(.white)
                .frame(height: 300)
                .opacity(show ? 1 : 0.5)
                .padding(show ? 16 : 32)
                .offset(y: show ? 0 : 30)
            RoundedRectangle(cornerRadius: 40)
                .frame(height: 300)
                .offset(y: show ? 600 : 0)
                .foregroundColor(.blue)
                .shadow(radius: 40)
                .padding()
            
        }.toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-animation-modifier-and-timing")
        })
        .onTapGesture {
//            show.toggle()
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

#Preview {
    AnimationModifierAndTiming()
}
