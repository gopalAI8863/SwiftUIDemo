//
//  OnScrolllistener.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI
import SwiftUITrackableScrollView
struct OnScrolllistener: View {
    
    @State private var scrollViewContentOffset = CGFloat(0)
    
    var body: some View {
        VStack{
            Text("\(scrollViewContentOffset)")
                .foregroundStyle(.red)
            TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
            }                  
            .onChange(of: scrollViewContentOffset, { oldValue, newValue in
                print("scrollViewContentOffset", scrollViewContentOffset)
                
            })

        } .toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-onscroll-listener")
        })
    }
}

#Preview {
    OnScrolllistener()
}
