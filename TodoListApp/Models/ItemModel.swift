//
//  ItemModel.swift
//  TodoListApp
//
//  Created by EFE DAVRAN on 6.09.2024.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String 
    let title : String
    let isComplated : Bool
    
    init(id: String = UUID().uuidString, title: String, isComplated: Bool) {
        self.id = id
        self.title = title
        self.isComplated = isComplated
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplated: !isComplated)
     
    }
}
