//
//  TrailingView.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI

struct TrailingView: View {
    @EnvironmentObject var viewModel: WorkoutViewModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            Button(action: {
                switch viewModel.state.sortType {
                case .distance:
                    viewModel.trigger(.sort(.complexity))
                default:
                    viewModel.trigger(.sort(.distance))
                }
            }) {
                Image(systemName: "arrow.up.arrow.down")
            }
            EditButton()
        }
    }
}
