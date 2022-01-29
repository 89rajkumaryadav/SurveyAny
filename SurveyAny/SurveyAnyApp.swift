//
//  SurveyAnyApp.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 26/01/22.
//

import SwiftUI

@main
struct SurveyAnyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
