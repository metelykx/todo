//
//  todoApp.swift
//  todo
//
//  Created by Denis Ivaschenko on 13.09.2025.
//

import SwiftUI

@main
struct todoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
