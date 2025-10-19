//
//  ToggleTodoUseCase.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import Foundation


struct ToggleTodoUseCase {
    private let repository: TodoRepository
    init(repository: TodoRepository) {
        self.repository = repository
    }
    
    func execute(id: UUID) {
        repository.toggleTodo(id: id)
    }
}
