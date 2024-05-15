//
//  JournaNetSwiftUIApp.swift
//  JournaNetSwiftUI
//
//  Created by Rustam Keneev on 15/5/24.
//

import SwiftUI

@main
struct JournaNetSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
