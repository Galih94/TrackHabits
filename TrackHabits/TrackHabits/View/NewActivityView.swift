//
//  NewActivityView.swift
//  TrackHabits
//
//  Created by Galih Samudra on 18/07/24.
//

import SwiftUI

struct NewActivityView: View {
    var habits: Habits
    @Environment(\.dismiss) var dismiss
    @State private var title: String = ""
    @State private var desc: String = ""
    @State private var count: String = ""
    var body: some View {
        NavigationStack {
            Form(content: {
                TextField("Title", text: $title, prompt: Text("Activity name"))
                
                TextField("Description", text: $desc, prompt: Text("Activity description"))
            })
            .toolbar(content: {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        let act = Activity(title: title, desc: desc, completionCount: 0)
                        habits.activities.append(act)
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            })
        }
    }
}

#Preview {
    NewActivityView(habits: Habits())
}
