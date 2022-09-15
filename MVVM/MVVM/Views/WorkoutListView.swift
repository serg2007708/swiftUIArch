//
//  WorkoutListView.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI

struct WorkoutListView: View {
    @EnvironmentObject var viewModel: WorkoutViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.workouts) {
                WorkoutView(workout: $0)
            }
            .onDelete {
                viewModel.deleteWorkout(index: $0)
            }
            .listRowInsets(EdgeInsets())
        }
    }
}
