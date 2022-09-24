//
//  ItemModel.swift
//  Todo-app
//
//  Created by Celil Çağatay Gedik on 23.09.2022.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateComplete() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}


