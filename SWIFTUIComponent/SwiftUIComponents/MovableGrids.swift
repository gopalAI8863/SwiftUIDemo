//
//  MovableGrids.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 01/01/24.
//

import SwiftUI

struct MovableGrids: View {
    
    @State private var colors:[Color] = [.red,.blue,.purple,.green,.yellow,.black,.brown,.mint,.orange,.cyan]
    let colomns = Array(repeating: GridItem(spacing:10), count: 3)
    @State private var draggingItem:Color?
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                LazyVGrid(columns: colomns, content: {
                    ForEach(colors,id: \.self){ color in
                        GeometryReader{
                            let size = $0.size
                            RoundedRectangle(cornerRadius: 10)
                               .fill(color.gradient)
                            // Drag
                               .draggable(color){
                                   // Custom preview
                                   RoundedRectangle(cornerRadius: 10)
//                                       .fill(.ultraThinMaterial)
                                       .frame(width:1,height: 1)
                                       .onAppear(){
                                           draggingItem = color
                                       }
                                   
                               }
                            //Drop
                               .dropDestination(for:Color.self) { items, location in
                                   draggingItem = nil
                                   return false
                               } isTargeted:{ status in
                                   if let draggingItem,status,draggingItem != color{
                                       // Moving color from source to destination
                                      if let sourceIndex = colors.firstIndex(of: draggingItem),
                                         let destinationIndex = colors.firstIndex(of: color){
                                          withAnimation(.bouncy){
                                              let sourceItem = colors.remove(at: sourceIndex)
                                              colors.insert(sourceItem, at: destinationIndex)
                                          }
                                      }
                                   }
                               }
//
                        }.frame(height: 100)
                        
//                        RoundedRectangle(cornerRadius: 10)
//                       .fill(color.gradient)
//                       .frame(height: 100)
//                            .draggable(color){
//                                // Custom preview
//                                RoundedRectangle(cornerRadius: 10)
//                                    .fill(.ultraThinMaterial)
//                                    .frame(width:100)
//                                
//                            }
                        
                    }
                }).padding()
            }.navigationTitle("Movable Grid")
        }
    }
}

#Preview {
    MovableGrids()
}
