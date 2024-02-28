//
//  TaskDetailsPage.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/19/24.
//

import SwiftUI

struct TaskEditView: View {
//  @State private var taskTitle = ""
//  @State private var notes = ""
//  @State private var isCompleted = Bool()
 @Binding var task: Task

  var body: some View {

    NavigationView {
      Form{
        Section{
          TextField("Task Title", text: $task.title)
        }
      header: {
          Text("Task Title")
      }
        Section {
          TextField("Notes", text: $task.notes, axis: .vertical)
            .lineLimit(10)
        }
        
      header: {
          Text("Notes")
      }
        Section {
          Toggle(isOn: $task.isCompleted, label: {
            Text("Completed")
          })
        }
      }
    }
  }
}


#Preview {
  TaskEditView(task: .constant(Task.staticTask[4]))
}
