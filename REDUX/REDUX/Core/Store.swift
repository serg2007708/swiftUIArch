//
//  Store.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI

final class Store: ObservableObject {
    @Published private(set) var state: AppState
    
    init(state: AppState = .init(workouts: [Workout]())) {
        self.state = state
    }
    
    public func dispatch(action: Action) {
        state = reducer(state: state, action: action)
    }
}
