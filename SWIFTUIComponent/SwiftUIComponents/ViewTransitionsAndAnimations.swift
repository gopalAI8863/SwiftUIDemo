//
//  ViewTransitionsAndAnimations.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct ViewTransitionsAndAnimations: View {
    @State var show = false

       var body: some View {
           ZStack {
               if !show {
                   Text("View Transition")
                       .padding()
                       .background(Capsule().stroke())
               } else {
                   RoundedRectangle(cornerRadius: 30)
                       .fill(Color.blue)
                       .padding()
                       .transition(.move(edge: .top))
                       .zIndex(1)
               }
           }
           .onTapGesture {
               withAnimation(.spring()) {
                   show.toggle()
               }
           }
           .toolbar(content: {
               CustomLinkView(link: "https://designcode.io/swiftui-handbook-view-transition")
           })
       }
   }

#Preview {
    ViewTransitionsAndAnimations()
}
