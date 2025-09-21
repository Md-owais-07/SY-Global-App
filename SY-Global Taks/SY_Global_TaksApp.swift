//
//  SY_Global_TaksApp.swift
//  SY-Global Taks
//
//  Created by Owais on 9/16/25.
//

import SwiftUI

@main
struct SY_Global_TaksApp: App {
    @StateObject var navManager = AppNavigationManager()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(navManager)
        }
    }
}
