//
//  NetworkManager.swift
//  todo
//
//  Created by Denis Ivaschenko on 13.09.2025.
//

import Foundation

class NetworkManager: ObservableObject {
    
    ///singelton
    static let shared = NetworkManager()
    
    ///variable for get info from JSON
    var url = "https://dummyjson.com/todos"
    
    init() {}
    
    func fetchInfo() async throws -> [Todo] {
        
        guard let url = URL(string: url) else {
            throw NetworkErrors.invalidURL
        }
        
        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkErrors.invalidResponse
        }
        
        do {
            return try JSONDecoder().decode([Todo].self, from: data)
        } catch {
            throw NetworkErrors.invalidData
        }
    }
}
