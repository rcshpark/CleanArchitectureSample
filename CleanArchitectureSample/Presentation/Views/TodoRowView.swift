//
//  TodoRowView.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import SwiftUI

struct TodoRowView: View {
    let todo: Todo
    let toggleAction: () -> Void

    var body: some View {
        HStack {
            Image(systemName: todo.isComplete ? "checkmark.circle.fill" : "circle")
                .onTapGesture { toggleAction() }
            Text(todo.title)
                .strikethrough(todo.isComplete)
        }
    }
}
