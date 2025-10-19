//
//  Todo.swift
//  CleanArchitectureSample
//
//  Created by 박상훈 on 10/14/25.
//

import Foundation

struct Todo: Identifiable {
    let id: UUID
    let title: String
    var isComplete: Bool
}
