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

let key = "key"
// change 1
// change 2

@Observable
class Habits {
    var activities: [Activity] = [] {
        didSet {
            if let data = try? JSONEncoder().encode(activities) {
                UserDefaults.standard.setValue(data, forKey: key)
            }
        }
    }
    
    init() {
        if let savedActivities = UserDefaults.standard.data(forKey: key),
           let decoded = try? JSONDecoder().decode([Activity].self, from: savedActivities) {
            self.activities = decoded
            return
        }
        self.activities = []
    }
}
