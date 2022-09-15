//
//  Workout.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import Foundation

struct Workout: Identifiable {
    let id: UUID = .init()
    let name: String
    let distance: String
    let date: Date
    let complexity: Complexity
}

enum Complexity: Int {
    case low
    case medium
    case high
}
