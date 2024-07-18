//
//  ContentView.swift
//  TrackHabits
//
//  Created by Galih Samudra on 18/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var habits = Habits()
    @State private var showAddActivity: Bool = false
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(habits.activities) { activity in
                        Text("\(activity.title)")
                    }
                }
            }
            .navigationTitle("TrackHabits")
            .toolbar(content: {
                Button("New Activity") {
                    showAddActivity.toggle()
                }
            })
            .sheet(isPresented: $showAddActivity, content: {
                NewActivityView(habits: habits)
            })
        }
    }
}

#Preview {
    ContentView()
}
