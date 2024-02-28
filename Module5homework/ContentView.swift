//
//  ContentView.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/19/24.
//

import SwiftUI

struct ContentView: View {
  @State private var showSheet = false
  @EnvironmentObject var taskStore: TaskStore
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(taskStore.tasks.indices, id: \.self) { index in
          
          NavigationLink {
            TaskEditView(task: $taskStore.tasks[index])
          } label: {
            HStack {
              Text(taskStore.tasks[index].title)
              Spacer()
              taskStore.tasks[index].isCompleted ?
                Image(systemName: "checkmark.square")
                  .foregroundStyle(.green) :
                Image(systemName: "square")
                  .foregroundStyle(.red)

            }
          }
        }
      }
      .navigationTitle("My Tasks")
      .listStyle(PlainListStyle())
    }
    Spacer()
    HStack {
      Button(action: {showSheet = true}) {
        HStack {
          Image(systemName: "plus.app.fill")
          Text("Add Task")
        }
        
      }
      //I feel there's a better way to get the button to be leading. I tried a spacer too.
      .padding(.trailing, 275)
      .sheet(isPresented: $showSheet) {
        AddTaskView()
      }
    }
  }
}


#Preview {
  
  return ContentView()
    .environmentObject(TaskStore())
}

