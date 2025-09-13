//
//  ViewModel.swift
//  todo
//
//  Created by Denis Ivaschenko on 13.09.2025.
//

import Foundation

class ViewModel: ObservableObject {
    
    ///array for info
    @Published var todos: [Todo] = []
    
    func gets() {
        Task {
            do {
                let todo = try await NetworkManager.shared.getInfo()
                todos = todo.todos
            }
            catch {
                if let error = error as? NetworkErrors {
                    print(error)
                }
            }
        }
    }
}
