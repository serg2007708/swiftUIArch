//
//  TrailingView.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI

struct TrailingView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            Button(action: {
                switch self.store.state.sortType {
                case .distance:
                    self.store.dispatch(action: .sort(by: .distance))
                default:
                    self.store.dispatch(action: .sort(by: .complexity))
                }
            }) {
                Image(systemName: "arrow.up.arrow.down")
            }
            EditButton()
        }
    }
}
