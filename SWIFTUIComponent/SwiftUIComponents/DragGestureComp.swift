//
//  DragGestureComp.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct DragGestureComp: View {
    @State var viewState = CGSize.zero
        var body: some View {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
                .frame(width: 300, height: 400)
                .offset(x: viewState.width, y: viewState.height)
                .gesture(
                    DragGesture().onChanged { value in
                        viewState = value.translation
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            viewState = .zero
                        }
                    }
                )
                .toolbar(content: {
                    CustomLinkView(link: "https://designcode.io/swiftui-handbook-drag-gesture")
                })
        }
}

#Preview {
    DragGestureComp()
}
