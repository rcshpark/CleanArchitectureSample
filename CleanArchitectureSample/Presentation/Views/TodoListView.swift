//
//  TodoListView.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import SwiftUI

struct TodoListView: View {
    @ObservedObject var viewModel: TodoViewModel
    @State private var newTask: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("새 할 일 입력", text: $newTask)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button(action: addTask) {
                        Text("추가")
                    }
                }
                .padding()

                List {
                    ForEach(viewModel.todos) { todo in
                        TodoRowView(todo: todo) {
                            viewModel.toggleTodo(id: todo.id)
                        }
                    }
                }
            }
            .navigationTitle("Clean Todo")
        }
    }

    private func addTask() {
        guard !newTask.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        viewModel.addTodos(title: newTask)
        newTask = ""
    }
}

#Preview {
    let mockDataSource = LocalTodoDataSource()
    let mockRepository = TodoRepositoryImpl(localDataSource: mockDataSource)
    let getTodoUsecase = GetTodoUseCase(repository: mockRepository)
    let addTodoUsecase = AddTodoUseCase(repository: mockRepository)
    let toggleTodoUsecase = ToggleTodoUseCase(repository: mockRepository)

    let previewViewModel = TodoViewModel(
        getTodoUseCase: getTodoUsecase,
        addTodoUseCase: addTodoUsecase,
        toggleTodoUseCase: toggleTodoUsecase
    )

    previewViewModel.todos = [
        Todo(id: UUID(), title: "예시 1 - 장보기", isComplete: false),
        Todo(id: UUID(), title: "예시 2 - 코딩하기", isComplete: true),
        Todo(id: UUID(), title: "예시 3 - 운동하기", isComplete: false)
    ]

    return TodoListView(viewModel: previewViewModel)
}
