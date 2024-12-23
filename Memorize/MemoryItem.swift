//
//  MemoryItem.swift
//  HWS-Memorize
//
//  Created by Yasser Bal on 23/12/2024.
//
import Foundation

struct MemoryItem:Codable,Identifiable {
    let id = UUID()
    let title:String
    let text:String
    
    enum CodingKeys:String, CodingKey {
        case title
        case text
    }
}
