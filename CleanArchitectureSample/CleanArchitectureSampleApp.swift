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
            let diContainer = DIContainer()
            let viewModel = TodoViewModel(getTodoUseCase: diContainer.getTodoUsecase, addTodoUseCase: diContainer.addTodoUsecase, toggleTodoUseCase: diContainer.toggleTodoUsecase)
            
            TodoListView(viewModel: viewModel)
        }
    }
}
