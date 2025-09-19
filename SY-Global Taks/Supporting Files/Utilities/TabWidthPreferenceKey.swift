//
//  TabWidthPreferenceKey.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct TabWidthPreferenceKey: PreferenceKey {
    static var defaultValue: [TopTab: CGFloat] = [:]
    
    static func reduce(value: inout [TopTab: CGFloat], nextValue: () -> [TopTab: CGFloat]) {
        value.merge(nextValue()) { $1 }
    }
}
