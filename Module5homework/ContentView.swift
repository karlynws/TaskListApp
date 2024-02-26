//
//  ContentView.swift
//  Module5homework
//
//  Created by Karlyn Sanders on 2/19/24.
//

import SwiftUI

struct ContentView: View {
  @State private var showSheet = false
  @State var tasks: [Task]
  
  var body: some View {
    NavigationStack {
      List {
        ForEach($tasks){ $task in
          NavigationLink {
            TaskDetailsPage(task: $task)
          } label: {
            HStack {
              Text(task.title)
              Spacer()
              task.isCompleted ?
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
        AddingNewTask()
      }
    }
  }
}


#Preview {
  let tasks = Task.staticTask
  return ContentView(tasks: tasks)
}

