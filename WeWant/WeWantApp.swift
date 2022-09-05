//
//  WeWantApp.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/09.
//

import SwiftUI

@main
struct WeWantApp: App {
    
    @StateObject var store = ListStore()
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
