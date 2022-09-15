//
//  ContentView.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isAddingMode: Bool = false
    @StateObject private var viewModel = WorkoutViewModel()
    
    var body: some View {
        NavigationView {
            WorkoutListView()
                .navigationBarTitle("Workouts diary", displayMode: .inline)
                .navigationBarItems(
                    leading: AddButton(isAddingMode: self.$isAddingMode),
                    trailing: TrailingView().environmentObject(self.viewModel)
                )
                .environmentObject(self.viewModel)
        }
        .sheet(isPresented: $isAddingMode) {
            AddWorkoutView(isAddingMode: self.$isAddingMode)
                .environmentObject(self.viewModel)
        }
    }
}
