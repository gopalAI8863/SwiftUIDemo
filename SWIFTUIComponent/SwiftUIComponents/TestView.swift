//
//  TestView.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import SwiftUI

struct TestView: View {
    
    var card: some View {
        VStack(alignment: .leading, spacing: 12) {
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 24)
                .opacity(0.5)
            Text("View That Fits")
                .font(.title3).bold()
            Text("This will prioritize the first child view and fall back to the second view as long as it fits.")
                .font(.footnote)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .task {
            print("Hii")
        }
        .padding(20)
        .padding(.vertical, 20)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.1), radius: 3, y: 1)
        .shadow(color: .black.opacity(0.15), radius: 10, y: 5)
    }
    
    
    @State var position:CGSize = .zero
    
    
    //    var text: some View {
    //        Text("One place to stack all your cards")
    //            .font(.system(size: 48, weight: .heavy, width: .expanded))
    //            .bold()
    //            .padding(20)
    //            .frame(width: 390)
    //    }
    
    var body: some View {
//        ViewThatFits {
//      
//
////            Label("Welcome", systemImage: "bolt.shield")
////                .font(.largeTitle)
//
//          
//            
//         
//            
//            Label("Gopa Welcome hf gsdjhfgjf sgdjhf sdjhf gdshjf gdsjf gsdjf gdsjf gsdjfh gdsfj gdsf dgsfj sdjf dsgj fsdhjf sjh sdhjf gsdhjf gsdjhf gdsjhfgdshjf gdsfhjgdsfjgds fj hdagsjf dgsaf dsgfdsfdsfgfdshj adhjs fgdshj fgadshj fgdshj fghjasd gfhsdj gfdhjs fgsdhjf gdshjf gasdhj fgdshjfg dshjfg sdhjg fjhads gfdhsj gfhjds gfjdhsg fjdhsgf hjsdg fjsdh fsjh fgdsjfgdfghds fjhds hjdsgf hdsjfg hdjsfg dshjfg sdhjfg dhsjgf hdajsg fhdsajg fhjdsg fhdjsgf hjdsfg sdhjgf sdhjgf sdhjf gsdhjfg dshjfg hjdasfg dsahjf gdsahjf gdshjgf dsjhf gjsdg fjhdsag fhjadsgf hjdasgf ds f", systemImage: "bolt.shield")
//                .font(.largeTitle)
//            
//            Label("Welcome to AwesomeApp fd k gdfjhg dfjkg", systemImage: "bolt.shield")
//                .font(.largeTitle)
//        }
        ViewThatFits {
            HStack {
                card.frame(width: 200)
                card.frame(width: 200)
                card.frame(width: 200)
            }
            VStack {
                card
                card
                card
            }
        }
//        .padding(20)
    }
}

#Preview {
    TestView()
}


extension Font {
    public static func system(
        size: CGFloat,
        weight: UIFont.Weight,
        width: UIFont.Width) -> Font
    {
        return Font(
            UIFont.systemFont(
                ofSize: size,
                weight: weight,
                width: width)
        )
    }
}
