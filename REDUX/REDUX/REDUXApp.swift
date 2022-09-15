//
//  REDUXApp.swift
//  REDUX
//
//  Created by Sergiy Sobol on 28.06.2022.
//

import SwiftUI
import ReSwift

@main

struct REDUXApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Store())
        }
    }
}
