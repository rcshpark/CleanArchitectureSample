//
//  GetTodoUseCase.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

struct GetTodoUseCase {
    private let repository: TodoRepository
    init(repository: TodoRepository) {
        self.repository = repository
    }
    
    func execute() -> [Todo] {
        repository.fetchTodos()
    }
}
