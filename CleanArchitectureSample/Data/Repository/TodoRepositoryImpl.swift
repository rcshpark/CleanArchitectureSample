//
//  TodoRepositoryImpl.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import Foundation

final class TodoRepositoryImpl: TodoRepository {
    private let localDataSource: LocalTodoDataSource

    init(localDataSource: LocalTodoDataSource) {
        self.localDataSource = localDataSource
    }

    func fetchTodos() -> [Todo] {
        localDataSource.getAll()
    }

    func addTodo(title: String) {
        localDataSource.insert(title: title)
    }

    func toggleTodo(id: UUID) {
        localDataSource.toggle(id: id)
    }
}
