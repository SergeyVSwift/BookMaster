//
//  BookMasterApp.swift
//  BookMaster
//
//  Created by Sergey V on 15.03.25.
//

import SwiftUI

@main
struct BookMasterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}


let currentUserID: UUID = .init()
