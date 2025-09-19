//
//  SettingViewModel.swift
//  SY-Global Taks
//
//  Created by Owais on 9/19/25.
//

import Foundation
internal import Combine

class ProfileViewModel: ObservableObject {
    @Published var profileItems: [ProfileItem] = []
    
    init() {
        setupProfileItems()
    }
    
    private func setupProfileItems() {
        profileItems = [
            ProfileItem(icon: "gear", title: "Account settings", action: {
                print("Navigate to profile Settings")
            }),
            
            ProfileItem(icon: "questionmark.circle", title: "Get help", action: {
                print("Navigate to profile Settings")
            }),
            
            ProfileItem(icon: "person.crop.circle", title: "View profile", action: {
                print("Navigate to profile Settings")
            }),
            
            ProfileItem(icon: "hand.raised", title: "Privacy", action: {
                print("Navigate to profile Settings")
            }),
    
            ProfileItem(icon: "person.3", title: "Refer a host", action: {
                print("Navigate to profile Settings")
            }),
            
            ProfileItem(icon: "person.2", title: "Find a co-host", action: {
                print("Navigate to profile Settings")
            }),
            
            ProfileItem(icon: "gift", title: "Gift cards", action: {
                print("Navigate to profile Settings")
            }),
            
            ProfileItem(icon: "doc.text", title: "Legal", action: {
                print("Navigate to profile Settings")
            }),
            
            ProfileItem(icon: "rectangle.portrait.and.arrow.right", title: "Log out", action: {
                print("Navigate to profile Settings")
            }),
        ]
    }
}
