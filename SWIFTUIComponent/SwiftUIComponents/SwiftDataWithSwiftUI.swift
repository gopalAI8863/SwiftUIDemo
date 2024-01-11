//
//  SwiftDataWithSwiftUI.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 29/12/23.
//

import SwiftUI
import  SwiftData
struct SwiftDataWithSwiftUI: View {
    
    @Environment(\.modelContext) private var ctx
    
    @Query(FetchDescriptor(
        predicate: #Predicate {(person: Person) in
            return person.isLiked == true
         },
    sortBy: [SortDescriptor(\.dateAdded,order: .reverse)]
    ), animation: .snappy) var favourites:[Person]
    
    @Query(FetchDescriptor(
        predicate: #Predicate {(person: Person) in
            return person.isLiked == false
         },
    sortBy: [SortDescriptor(\.dateAdded,order: .reverse)]
    ), animation: .snappy) var normal:[Person]

    
    var body: some View {
        NavigationStack{
            List{
                DisclosureGroup("Favourites"){
                    ForEach(favourites){ item in
                        HStack{
                            Text(item.name)
                            
                            Spacer()
                            Button(action: {
                                item.isLiked.toggle()
                               try? ctx.save()
                            }, label: {
                                Image(systemName: "suit.heart.fill")
                                    .tint(item.isLiked ? .red : .gray)
                            })

                        }
                        .swipeActions{
                            Button{
                                ctx.delete(item)
                                try? ctx.save()
                            }label: {
                                Image(systemName: "trash.fill")
                            }
                            .tint(.red)
                        }
                    }
                }
                DisclosureGroup("Normal"){
                    ForEach(normal){ item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Button(action: {
                                item.isLiked.toggle()
                               try? ctx.save()
                            }, label: {
                                Image(systemName: "suit.heart.fill")
                                    .tint(item.isLiked ? .red : .gray)
                            })

                        }
                        .swipeActions{
                            Button{
                                ctx.delete(item)
                                try? ctx.save()
                            }label: {
                                Image(systemName: "trash.fill")
                            }
                            .tint(.red)
                        }

                    }
                }

            }            .navigationTitle("SwiftData")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Item") {
                        // Add data
                        let person = Person(name: "Hello User \(Date().formatted(date: .numeric, time: .omitted))")
                        // Inserting into Context
                        ctx.insert(person)
                        do{
                            try ctx.save()
                        }catch{
                            print(error.localizedDescription)
                        }
                        
                    }
                }
            })
        }
    }
}

#Preview {
    SwiftDataWithSwiftUI()
}

/// Model
@Model
class Person{
    var name:String
    var isLiked:Bool
    var dateAdded:Date
    
    init(name: String, isLiked: Bool = false, dateAdded: Date = .init()) {
        self.name = name
        self.isLiked = isLiked
        self.dateAdded = dateAdded
    }
}
