//
//  ContentView.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: Store
    @State private var isAddingMode: Bool = false
    
    var body: some View {
        NavigationView {
            WorkoutListView()
                .navigationBarTitle("Workouts diary", displayMode: .inline)
                .navigationBarItems(
                    leading: AddButton(isAddingMode: self.$isAddingMode),
                    trailing: TrailingView()
                )
        }
        .sheet(isPresented: $isAddingMode) {
            AddWorkoutView(isAddingMode: self.$isAddingMode)
                .environmentObject(self.store)
        }
    }
}
