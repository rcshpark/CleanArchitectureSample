//
//  Todo.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import Foundation

final class LocalTodoDataSource {
    private var todos: [Todo] = []

    func getAll() -> [Todo] {
        todos
    }

    func insert(title: String) {
        todos.append(Todo(id: UUID(), title: title, isComplete: false))
    }

    func toggle(id: UUID) {
        guard let index = todos.firstIndex(where: { $0.id == id }) else { return }
        todos[index].isComplete.toggle()
    }
}
