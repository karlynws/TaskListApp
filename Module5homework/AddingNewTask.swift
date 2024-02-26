//
//  AddingNewTask.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/20/24.
//


import SwiftUI

struct AddingNewTask: View {
  @State private var taskTitle = ""
  @State private var notes = ""
  
  
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
            // Handle done action
          }
        }
        ToolbarItem(placement: .topBarLeading) {
          Button("Cancel") {
            // Handle done action
          }
        }
      }
    }
  }
}

#Preview {
  AddingNewTask()
}

