//
//  CleanArchitectureSampleApp.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import SwiftUI

@main
struct CleanArchitectureSampleApp: App {
    var body: some Scene {
        WindowGroup {
            let localTodoDataSource = LocalTodoDataSource()
            let todoRepository = TodoRepositoryImpl(localDataSource: localTodoDataSource)
            let addTodoUsecase = AddTodoUseCase(repository: todoRepository)
            let getTodoUsecase = GetTodoUseCase(repository: todoRepository)
            let toggleTodoUsecase = ToggleTodoUseCase(repository: todoRepository)
            let viewModel = TodoViewModel(getTodoUseCase: getTodoUsecase, addTodoUseCase: addTodoUsecase, toggleTodoUseCase: toggleTodoUsecase)
            
            TodoListView(viewModel: viewModel)
        }
    }
}
