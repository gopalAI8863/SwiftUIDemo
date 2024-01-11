//
//  DatePickerComp.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI

struct DatePickerComp: View {
    @State var selectedDate = Date()
    var body: some View {
        VStack{
            
            Button(action: {}) {
                Text("Hover Effect")
            }
            .padding()
            .contentShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .hoverEffect(.lift)
            
                Text("Date and Time")
                DatePicker("Date and time", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            
            Divider()
            
            Text("Time")

            DatePicker("Time", selection: $selectedDate,displayedComponents: .date)
            
            Divider()
            
            Text("Graphical Format")

            DatePicker("Time", selection: $selectedDate,displayedComponents: .date).datePickerStyle(.graphical)
        }.toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-date-picker")
        })
    }
}

#Preview {
    DatePickerComp()
}
