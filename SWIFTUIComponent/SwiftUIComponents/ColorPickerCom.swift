//
//  ColorPicker.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

struct ColorPickerCom: View {
    @State var color = Color.blue
    @State var color2 = Color.purple
    var body: some View {
        VStack{
            ColorPicker("Color1", selection: $color)
            ColorPicker("Color2", selection: $color2)
            
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [color, color2]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        .toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-color-picker")
        })
    }
}

#Preview {
    ColorPickerCom()
}
