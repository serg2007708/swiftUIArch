//
//  AddButton.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI

struct AddButton: View {
    @Binding var isAddingMode: Bool
    
    var body: some View {
        Button(action: { self.isAddingMode = true }) {
            Image(systemName: "plus")
        }
    }
}
