//
//  Action.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import Foundation

enum Action {
    case addWorkout(_ workout: Workout)
    case removeWorkout(at: IndexSet)
    case sort(by: SortType)
}
