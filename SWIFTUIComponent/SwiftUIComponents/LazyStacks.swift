//
//  LazyStacks.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct LazyStacks: View {
    var body: some View {
        VStack(spacing: 10){
            Divider()
            Text("LazyHStack And LazyVStack")
            Divider()
            ScrollView(.horizontal){
                LazyHStack(spacing: 16) {
                    ForEach(0 ..< 10000) { item in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.blue)
                            .frame(width: 180,height: 100)
                            .shadow(radius: 100)
                            .overlay {
                                Text("Horizointal::\(item)").foregroundStyle(.white)
                                    .padding()
                            }
                        
                    }
                }
            }.frame(height: 120)
            
            ScrollView(.vertical){
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 10000) { item in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.red)
                            .frame(width: 180,height: 100)
                            .shadow(radius: 100)
                            .overlay {
                                Text("Vertical::\(item)").foregroundStyle(.white)
                                    .padding()
                            }
                    }
                }
            }
        }
        .toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-lazy-stacks")
        })
    }
}

#Preview {
    LazyStacks()
}
