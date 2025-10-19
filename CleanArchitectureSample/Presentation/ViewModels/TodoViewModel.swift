//
//  TodoViewModel.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import SwiftUI

final class TodoViewModel: ObservableObject {
    @Published var todos: [Todo] = []
    
    private let getTodoUseCase: GetTodoUseCase
    private let addTodoUseCase: AddTodoUseCase
    private let toggleTodoUseCase: ToggleTodoUseCase
    
    init(getTodoUseCase: GetTodoUseCase, addTodoUseCase: AddTodoUseCase, toggleTodoUseCase: ToggleTodoUseCase) {
        self.getTodoUseCase = getTodoUseCase
        self.addTodoUseCase = addTodoUseCase
        self.toggleTodoUseCase = toggleTodoUseCase
    }
    
    func fetchTodos() {
        todos = getTodoUseCase.execute()
    }
    
    func addTodos(title: String) {
        addTodoUseCase.execute(title: title)
        fetchTodos()
    }
    
    func toggleTodo(id: UUID) {
        toggleTodoUseCase.execute(id: id)
        fetchTodos()
    }
}
