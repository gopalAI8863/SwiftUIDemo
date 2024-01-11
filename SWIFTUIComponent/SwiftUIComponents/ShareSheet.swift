//
//  ShareSheet.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI

struct ShareSheet: View {
    @State var isPresent = false
    var body: some View {
        VStack{
            Button("Share", action: shareButton)
            Button("Action Sheet", action: actionSheet)
        }.toolbar(content: {
            CustomLinkView(link: "https://designcode.io/swiftui-handbook-share-sheet")
        })
//        .actionSheet(isPresented: $isPresent, content: {
//            ActionSheet(title: Text("Hi"))
//        })
        .confirmationDialog("Action Sheet", isPresented: $isPresent) {
            Button {
                // Button Action
            } label: {
                Text("Gallery")
            }
            
            Button {
                // Button Action
            } label: {
                Text("Camera")
            }


        }
    }
    func shareButton() {
            let url = URL(string: "https://designcode.io")
            let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            let myWindows = windowScene.windows
            myWindows.first?.rootViewController?.present(activityController, animated: true,completion: nil)
        }

//            UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
    }
    
    func actionSheet(){
        isPresent = true
    }
}

#Preview {
    ShareSheet()
}
