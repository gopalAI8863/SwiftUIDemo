//
//  AnimationStates.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct AnimationStates: View {
    @State var show = false
    
    var body: some View {
        VStack{
            
        VStack {
            Text("View more")
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: show ? 320 : 300, height: show ? 600 : 44)
        .background(Color.blue)
        .cornerRadius(30)
        .shadow(color: Color.blue.opacity(0.5), radius: 20)
        .onTapGesture {
            withAnimation(.spring) {
                show.toggle()
            }
        }
            Button("Submit"){
                
            }.padding()
            
        }.toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-animations")
        })

    }
}

#Preview {
    AnimationStates()
}
