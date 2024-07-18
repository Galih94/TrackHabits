//
//  ActivityDetailView.swift
//  TrackHabits
//
//  Created by Galih Samudra on 18/07/24.
//

import SwiftUI

struct ActivityDetailView: View {
    @Binding var activity: Activity
    var body: some View {
        VStack {
            Text("Completion Count")
                .foregroundStyle(.secondary)
                .font(.subheadline)
            
            HStack {
                Button("", systemImage: "minus") {
                    activity.completionCount -= 1
                }
                Text("\(activity.completionCount)")
                    .foregroundStyle(.secondary)
                    .font(.headline)
                Button("", systemImage: "plus") {
                    activity.completionCount += 1
                }
            }
            Text("Description")
                .foregroundStyle(.secondary)
                .font(.subheadline)
            Text(activity.desc)
                .navigationTitle(activity.title)
            Spacer()
        }
    }
}

