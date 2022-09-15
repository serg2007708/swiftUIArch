//
//  WorkoutViewModel.swift
//  MVVM
//
//  Created by Sergiy Sobol on 28.06.2022.
//
import Combine
import Foundation

enum SortType {
    case distance
    case complexity
}

class WorkoutViewModel: ObservableObject {
    @Published var workouts = [Workout]()
    var sortType: SortType?
    
    func deleteWorkout(index: IndexSet) {
        workouts.remove(atOffsets: index)
    }
    
    func addWorkout(workout: Workout) {
        workouts.append(workout)
    }
    
    
    func sort(type: SortType) {
        switch type {
        case .distance:
            workouts.sort { $0.distance > $1.distance }
            sortType = .distance
        case .complexity:
            workouts.sort { $0.complexity.rawValue > $1.complexity.rawValue }
            sortType = .complexity
        }
    }
    
}
