//
//  Activity.swift
//  TrackHabits
//
//  Created by Galih Samudra on 18/07/24.
//

import Foundation

struct Activity: Identifiable, Codable {
    var id = UUID()
    let title: String
    let desc: String
    let completionCount: Int
}

@Observable
class Habits {
    var activities: [Activity] = []
}
