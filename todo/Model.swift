//
//  Model.swift
//  todo
//
//  Created by Denis Ivaschenko on 13.09.2025.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let todos: [Todo]
    let total, skip, limit: Int
}

// MARK: - Todo
struct Todo: Codable {
    let id: Int
    let todo: String
    let completed: Bool
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case id, todo, completed
        case userID = "userId"
    }
}
