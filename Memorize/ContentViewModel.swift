//
//  ContentViewModel.swift
//  Memorize
//
//  Created by Yasser Bal on 23/12/2024.
//

import Foundation

class ContentViewModel:ObservableObject {
    @Published var items:[MemoryItem]
    
    init(){
        self.items = Self.loadMemoryItems()
    }
    
    private static func loadMemoryItems() -> [MemoryItem] {
        guard let url = Bundle.main.url(forResource: "MemoryItems", withExtension: "json") else {
            fatalError("Failed to locate MemoryItems.json in bundle")
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode([MemoryItem].self, from: data)
        } catch is CocoaError {
            fatalError("Failed to read data from \(url.path())")
        } catch is DecodingError {
            fatalError("Failed to decode json data from \(url.path())")
        } catch {
            fatalError("Unknown error loading memoryItems \(error.localizedDescription)")
        }
    }
}
