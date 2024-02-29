//
//  Module5homeworkApp.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/19/24.
//

import SwiftUI
import Combine


@main
struct Module5homeworkApp: App {
    var body: some Scene {
        WindowGroup {
          @ObservedObject
          var taskStore = TaskStore()
          ContentView().environmentObject(taskStore)
        }
    }
}
