//
//  MemoryItemViw.swift
//  Memorize
//
//  Created by Yasser Bal on 23/12/2024.
//

import SwiftUI

struct MemoryItemView: View {
    let item:MemoryItem
    
    var body: some View {
        ScrollView{
            Text(item.text)
        }
        .navigationTitle(item.title)
    }
}

#Preview {
    NavigationStack{
        MemoryItemView(item: MemoryItem(title: "Foo", text: "Bar"))
    }
}
