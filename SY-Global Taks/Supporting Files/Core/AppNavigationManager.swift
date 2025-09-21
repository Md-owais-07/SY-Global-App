//
//  AppNavigationManager.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import Foundation
import SwiftUI
internal import Combine

class AppNavigationManager: ObservableObject {
    @Published var path: [AppRoute] = []
    @Published var selectedTab: TabbarController.Tab = .explore
    
    func push(_ route: AppRoute) {
        path.append(route)
    }
    
    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    func popToRoot() {
        path.removeAll()
    }
    
    func popToRootWithTab(_ tab: TabbarController.Tab) {
        path.removeAll()
        selectedTab = tab
    }
}

enum AppRoute: Hashable {
    case auth(AuthRoute)
    case tabbar(TabbarRoute)
}

enum AuthRoute: Hashable {
    case login
}

enum TabbarRoute: Hashable {
    case tabbar
}

@ViewBuilder
func authDestination(_ route: AuthRoute) -> some View {
    switch route {
    case .login:
        LoginView()
    }
}

@ViewBuilder
func tabbarDestination(_ route: TabbarRoute) -> some View {
    switch route {
    case .tabbar:
        TabbarController()
    }
}
