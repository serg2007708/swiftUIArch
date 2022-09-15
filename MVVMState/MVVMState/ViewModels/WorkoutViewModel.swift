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

class WorkoutViewModel: ViewModel {
    @Published
    private(set) var state: WorkoutListState
    
    
    init() {
        self.state = WorkoutListState(sortType: .distance, workouts: [])
    }
    
    func trigger(_ input: WorkoutListActions) {
        switch input {
        case .deleteWorout(let indexSet):
            state.workouts.remove(atOffsets: indexSet)
        case .addWorkout(let workout):
            state.workouts.append(workout)
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
    }
}
