//
//  Todo_appApp.swift
//  Todo-app
//
//  Created by Celil Çağatay Gedik on 23.09.2022.
//

import SwiftUI

@main
struct Todo_appApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
