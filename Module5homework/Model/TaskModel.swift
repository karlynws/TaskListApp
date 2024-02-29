//
//  TaskModel.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/20/24.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
    var notes: String = ""
}
