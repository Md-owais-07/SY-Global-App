//
//  ProfileItem.swift
//  SY-Global Taks
//
//  Created by Owais on 9/19/25.
//

import Foundation

struct ProfileItem: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
    let action: () -> Void
}
