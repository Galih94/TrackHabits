//
//  Activity.swift
//  TrackHabits
//
//  Created by Galih Samudra on 18/07/24.
//

import Foundation

struct Activity: Identifiable, Codable {
    var id = UUID()
    var title: String
    var desc: String
    var completionCount: Int
}

@Observable
class Habits: ObservableObject {
    var activities: [Activity] = []
}
