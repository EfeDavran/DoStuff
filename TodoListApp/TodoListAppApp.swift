//
//  TodoListAppApp.swift
//  TodoListApp
//
//  Created by EFE DAVRAN on 6.09.2024.
//

import SwiftUI

x@main
struct TodoListAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}

