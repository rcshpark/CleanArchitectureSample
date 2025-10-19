//
//  AddTodoUseCase.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

struct AddTodoUseCase {
    private let repository: TodoRepository
    init(repository: TodoRepository) {
        self.repository = repository
    }
    
    func execute(title: String) {
        repository.addTodo(title: title)
    }
}
