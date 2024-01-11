//
//  ContentView.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var isLoading = true
    var body: some View {
        NavigationStack{
            VStack {
                List(ComponentModel.arrComponent,id: \.id){ item in
                    NavigationLink {
                        switch item.id {
                        case 1 :
                            MaskandTransparency()
                        case 2 :
                            ClipShapeAndSmoothCorners()
                        case 3 :
                            TabViewPagination()
                        case 4 :
                            AnimationStates()
                        case 5 :
                            ViewTransitionsAndAnimations()
                        case 6 :
                            AnimationModifierAndTiming()
                        case 7 :
                            TransformAnimations()
                        case 8 :
                            TabViewPagination()
                        case 9 :
                            LongPressGestureComp()
                        case 10 :
                            DragGestureComp()
                        case 11 :
                            MatchedGeometryEffect()
                        case 12 :
                            AdvancedMatchedGeometryEffect()
                        case 13 :
                            LazyGridLayout()
                        case 14 :
                            LazyStacks()
                        case 15 :
                            OpenWithLink()
                        case 16 :
                            ColorPickerCom()
                        case 17 :
                            DatePickerComp()
                        case 18 :
                            RedactedPlaceholder()
                        case 19 :
                            HorizontalScrollwithrotate3DEffect()
                        case 20:
                            AnimationRepeatDelayandSpeed()
                        case 21:
                            PlayVideowithAVPlayer()
                        case 22:
                            OnScrolllistener()
                        case 23:
                            OpenLinkURL()
                        case 24:
                            ShareSheet()
                        case 25:
                            TabBarScrollToTop()
                        case 26:
                            SwiftDataWithSwiftUI()  
                        case 27:
                            AdaptiveSizePlayground()
                        default:
                            MaskandTransparency()
                        }
                        
                    } label: {
                        Text(item.name)
                    }.navigationTitle("Swift Component")

                }.redacted(reason: isLoading ? .placeholder : .init())
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            isLoading = false
                        }
                    }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
