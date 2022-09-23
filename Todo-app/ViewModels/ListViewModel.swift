//
//  ListViewModel.swift
//  Todo-app
//
//  Created by Celil Çağatay Gedik on 23.09.2022.
//

import Foundation
/*

 CRUD FUNCTIONS
 
 */
class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first title", isCompleted: false),
            ItemModel(title: "second", isCompleted: true),
            ItemModel(title: "third", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from:IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        //    if let index = items.firstIndex { (existingItem) -> Bool in
        //return existingItem.id == item.id
        //  } {
        // run this code
        // }
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateComplete()
        }
    }
}
