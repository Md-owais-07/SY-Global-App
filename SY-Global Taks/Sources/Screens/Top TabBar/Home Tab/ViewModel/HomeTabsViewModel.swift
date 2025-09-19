//
//  HomeTabsViewModel.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI
internal import Combine

class HomeTabsViewModel: ObservableObject {
    @Published var selectedTab: TopTab = .homes
    @Published var tabWidths: [TopTab: CGFloat] = [:]
}
