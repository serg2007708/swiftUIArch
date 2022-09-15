//
//  AppState.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import Foundation

struct AppState {
    var workouts: [Workout]
    var sortType: SortType?
}

enum SortType {
    case distance
    case complexity
}
