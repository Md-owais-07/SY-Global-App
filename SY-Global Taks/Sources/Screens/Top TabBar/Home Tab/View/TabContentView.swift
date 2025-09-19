//
//  TabContentView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct TabContentView: View {
    var selectedTab: TopTab = .experiences
    
    var body: some View {
        switch selectedTab {
        case .homes:
            HomesTopTabView()
        case .experiences:
            ExperiencesTopTabView()
        case .services:
            ServicesTopTabView()
        }
    }
}
