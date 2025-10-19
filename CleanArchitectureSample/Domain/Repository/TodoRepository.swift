//
//  TodoRepository.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import Foundation

protocol TodoRepository {
    func fetchTodos() -> [Todo]
    func addTodo(title: String)
    func toggleTodo(id: UUID)
}
