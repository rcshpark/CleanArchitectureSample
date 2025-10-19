//
//  DIContainer.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/19/25.
//
import Foundation

final class DIContainer: ObservableObject {
    let todoRepository: TodoRepository
    let addTodoUsecase: AddTodoUseCase
    let getTodoUsecase: GetTodoUseCase
    let toggleTodoUsecase: ToggleTodoUseCase

    init() {
        let dataSource = LocalTodoDataSource()
        let repository = TodoRepositoryImpl(localDataSource: dataSource)
        self.todoRepository = repository
        self.addTodoUsecase = AddTodoUseCase(repository: repository)
        self.getTodoUsecase = GetTodoUseCase(repository: repository)
        self.toggleTodoUsecase = ToggleTodoUseCase(repository: repository)
    }
}

