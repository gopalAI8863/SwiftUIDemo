//
//  SWIFTUIComponentApp.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 27/12/23.
//

import SwiftUI

@main
struct SWIFTUIComponentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: Person.self)
    }
}
