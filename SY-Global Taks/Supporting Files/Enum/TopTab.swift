//
//  TopTab.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import Foundation

enum TopTab: String, CaseIterable, Identifiable {
    case homes = "Homes"
    case experiences = "Experiences"
    case services = "Services"
    
    var id: String { rawValue }
}

