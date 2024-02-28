
//  TaskStore.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/25/24.


import Combine

class TaskStore: ObservableObject {
  @Published var tasks: [Task] = Task.staticTask

  init() {
    
  }
}
