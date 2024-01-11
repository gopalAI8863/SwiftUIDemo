//
//  TestViewTemp.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 01/01/24.
//

import SwiftUI
import Combine
struct TestViewTemp: View {
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            // Customized DisclosureGroup
//            DisclosureGroup(
//                isExpanded: $isExpanded,
//                content: {
//                    Text("This is the content of the disclosure group.")
//                },
//                label: {
//                    Label("Customized Disclosure Group", systemImage: "arrowtriangle.right.circle.fill")
//                        .font(.headline)
//                        .foregroundColor(.blue)
//                        .padding()
////                        .background(Color.secondary.opacity(0.1))
////                        .cornerRadius(10)
//                }
//            )
//            .accentColor(.orange) // Changes the arrow color when the group is expanded
            
            // Another example with more customization
            ScrollView(.vertical,showsIndicators: false){
                ForEach(1..<10){ itme in
                    DisclosureGroup(
                        //                isExpanded: $isExpanded,
                        content: {
                            Text("This is another content of the disclosure group.")
                                .padding()
                        },
                        label: {
                            HStack {
                                //                        Image(systemName: "star.circle.fill")
                                //                            .foregroundColor(.yellow)
                                Text("Another Customized Group")
                                    .font(.title2)
                                    .foregroundColor(.green)
                            }
                            .padding()
                            //                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.orange))
                        }
                    )
                }
            }
//            .accentColor(.purple)
        }
        .padding()
    }
}

#Preview {
    TestViewTemp()
}
    // Custom DisclosureGroup with additional styling
struct CustomDisclosureGroup<Content: View, Label: View>: View {
    @Binding var isExpanded: Bool
    var content: Content
    var label: Label
    
    var body: some View {
        DisclosureGroup(
            isExpanded: $isExpanded,
            content: {
                content
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            },
            label: {
                label
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
            }
        )
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//}


class MyModelView: ObservableObject{
    @Published var data:String = ""
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        $data
            .sink { userData in
                print("Data::\(userData)")
            }
//            .store(in: &cancellables)
    }
    deinit{
        print("deinit")
    }
}
