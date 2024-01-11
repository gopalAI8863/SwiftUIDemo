//
//  TabViewPagination.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct TabViewPagination: View {
    var body: some View {
        TabView{
            Rectangle()
                .fill(.blue)
            Rectangle()
                .fill(.red)
            Rectangle()
                .fill(.pink)
        }
        .tabViewStyle(PageTabViewStyle())
        .toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-tab-view-pagination")
        })
    }
}

#Preview {
    TabViewPagination()
}
