//
//  piedra_papel_o_tijeraApp.swift
//  piedra-papel-o-tijera
//
//  Created by juan camilo on 15/03/25.
//

import SwiftUI

@main
struct piedra_papel_o_tijeraApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            view()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
