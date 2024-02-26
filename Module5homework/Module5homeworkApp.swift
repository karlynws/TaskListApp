//
//  Module5homeworkApp.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/19/24.
//

import SwiftUI

@main
struct Module5homeworkApp: App {
    var body: some Scene {
        WindowGroup {
//          let taskStore = TaskStore(tasks: Task.staticTask)
          var tasks: [Task] = Task.staticTask
          ContentView(tasks: tasks)
        }
    }
}
