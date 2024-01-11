//
//  LongPressGesture.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct LongPressGestureComp: View {
    @GestureState var press = false
    @State var show = false
    
    var body: some View {
        Image(systemName: "camera.fill")
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .background(show ? Color.black : Color.blue)
            .mask(Circle())
            .scaleEffect(press ? 2 : 1)
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .gesture(
                LongPressGesture(minimumDuration: 0.5)
                    .updating($press) { currentState, gestureState, transaction in
                        gestureState = currentState
                    }
                    .onEnded { value in
                            show.toggle()
                    }
            )
            .toolbar(content: {
                CustomLinkView(link: "https://designcode.io/swiftui-handbook-long-press")
            })
    }
}

#Preview {
    LongPressGestureComp()
}
