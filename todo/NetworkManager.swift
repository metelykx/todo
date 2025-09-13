//
//  NetworkManager.swift
//  todo
//
//  Created by Denis Ivaschenko on 13.09.2025.
//

import Foundation

class NetworkManager {
    
    ///singelton
    static let shared = NetworkManager()
    
    ///variable for get info from JSON
    var url = "https://dummyjson.com/todos"
    
    init() {}
    
    func fetchInfo() async throws -> [Todo] {
        
        guard let url = URL(string: url) else {
            throw NetworkErrors.invalidURL
        }
    }
}
