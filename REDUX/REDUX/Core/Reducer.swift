//
//  Reducer.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import Foundation

func reducer(state: AppState, action: Action) -> AppState {
    var state = state
    
    switch action {
    case .addWorkout(let workout):
        state.workouts.append(workout)
        
    case .removeWorkout(let indexSet):
        state.workouts.remove(atOffsets: indexSet)
    
    case .sort(let type):
        switch type {
        case .distance:
            state.workouts.sort { $0.distance > $1.distance }
            state.sortType = .distance
        case .complexity:
            state.workouts.sort { $0.complexity.rawValue > $1.complexity.rawValue }
            state.sortType = .complexity
        }
    }
    return state
}
