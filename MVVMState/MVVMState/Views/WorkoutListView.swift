//
//  WorkoutListView.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI

struct WorkoutListState {
    var sortType: SortType
    var workouts: [Workout]
}

enum WorkoutListActions {
    case addWorkout(Workout)
    case deleteWorout(IndexSet)
    case sort(SortType)
}

struct WorkoutListView: View {
    @EnvironmentObject var viewModel: WorkoutViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.state.workouts) {
                WorkoutView(workout: $0)
            }
            .onDelete {
                viewModel.trigger(.deleteWorout($0))
            }
            .listRowInsets(EdgeInsets())
        }
    }
}
