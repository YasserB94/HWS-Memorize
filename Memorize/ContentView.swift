//
//  ContentView.swift
//  Memorize
//
//  Created by Yasser Bal on 23/12/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = ContentViewModel()
    
    var body: some View {
        NavigationStack{
            List(model.items, rowContent: { item in
                NavigationLink {
                    MemoryItemView(item: item)
                        .padding()
                } label: {
                    Text(item.title)
                }
            })
            .navigationTitle("Memorize")
        }
        
    }
}

#Preview {
        ContentView()
}
