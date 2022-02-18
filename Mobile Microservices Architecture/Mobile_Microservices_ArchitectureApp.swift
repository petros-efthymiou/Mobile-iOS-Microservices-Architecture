//
//  Mobile_Microservices_ArchitectureApp.swift
//  Mobile Microservices Architecture
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import SwiftUI

@main
struct Mobile_Microservices_ArchitectureApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
