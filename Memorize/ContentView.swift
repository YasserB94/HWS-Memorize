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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(model.message)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
