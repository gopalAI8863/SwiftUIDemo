//
//  LazyGridLayout.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct LazyGridLayout: View {
    var body: some View {
        VStack{
            Divider()
            Text("*****   LazyVGrid   *****")
            Divider()
            ScrollView(.vertical){
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80),spacing: 16)],spacing: 16){
                    ForEach(1 ..< 10){ item in
                        Rectangle()
                            .fill(.red)
                            .frame(height: 100)
                    }
                }
            }
            Divider()
            Text("*****   LazyHGrid   *****")
            Divider()
            ScrollView(.horizontal){
                LazyHGrid(rows: [GridItem(.adaptive(minimum: 80),spacing: 16)],spacing: 16){
                    ForEach(1 ..< 10){ item in
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 100)
                    }
                }
            }
        }
        .toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-lazy-grid")
        })
    }
}

#Preview {
    LazyGridLayout()
}
