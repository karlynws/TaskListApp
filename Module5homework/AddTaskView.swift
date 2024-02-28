//
//  AddingNewTask.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/20/24.
//


import SwiftUI

struct AddTaskView: View {
  @State private var taskTitle = ""
  @State private var notes = ""
  @Environment(\.dismiss) var dismiss
  @EnvironmentObject var taskStore: TaskStore
  
  var body: some View {
    
    NavigationStack {
      
      Form{
        Section{
          TextField("Task Title", text: $taskTitle)
        }
      header: {
        Text("Task Title")
      }
        Section {
          TextField("Notes", text: $notes)
        }
      header: {
        Text("Notes")
      }
        
      }
      .navigationTitle("Adding New Task")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button("Add") {
            taskStore.tasks.append(Task(title: taskTitle))
            
            dismiss()
          }
          .disabled(taskTitle.isEmpty)
        }
        ToolbarItem(placement: .topBarLeading) {
          Button("Cancel") {
            dismiss()
          }
        }
      }
    }
  }
}

#Preview {
  AddTaskView()
    .environmentObject(TaskStore())
}

