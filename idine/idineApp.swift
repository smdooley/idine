//
//  idineApp.swift
//  idine
//
//  Created by Sean Dooley on 15/10/2024.
//

import SwiftUI

@main
struct idineApp: App {
    // @StateObject property wrapper is responsible for keeping the object alive throughout the life of our app
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
