//
//  HomeTabsView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct HomeTabsView: View {
    @StateObject private var viewModel = HomeTabsViewModel()
    @Namespace private var underlineAnimation
    
    var body: some View {
        VStack(spacing: 0) {
            
            // Segmented Tabs
                HStack(spacing: 50) {
                    ForEach(TopTab.allCases) { tab in
                        VStack(spacing: 6) {
                            Image("\(tab)")
                                .resizable()
                                .frame(width: 25, height: 25)
                            
                            Text(tab.rawValue)
                                .font(.system(size: 12, weight: viewModel.selectedTab == tab ? .semibold : .regular))
                                .foregroundColor(viewModel.selectedTab == tab ? .primary : .gray)
                                .background(
                                    GeometryReader { geo in
                                        Color.clear
                                            .preference(key: TabWidthPreferenceKey.self,
                                                        value: [tab: geo.size.width])
                                    }
                                )
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        viewModel.selectedTab = tab
                                    }
                                }
                            
                            // Underline
                            if viewModel.selectedTab == tab {
                                Capsule()
                                    .frame(height: 3)
                                    .frame(width: viewModel.tabWidths[tab] ?? 20)
                                    .matchedGeometryEffect(id: "underline", in: underlineAnimation)
                            } else {
                                Color.clear
                                    .frame(height: 3)
                                    .frame(width: viewModel.tabWidths[tab] ?? 20)
                            }
                        }
                    }
                }
                .padding(.top, 0)
                .frame(maxWidth: .infinity)
                .frame(height: 70)
                .background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(
                            .clear
                        )
                        .shadow(color: .gray, radius: 1, x: 0, y: 1)
                )
                .onPreferenceChange(TabWidthPreferenceKey.self) { value in
                    viewModel.tabWidths.merge(value) { $1 }
                }
            
            // Tab Content
            TabContentView(selectedTab: viewModel.selectedTab)
            
            Spacer()
        }.background(.clear)
    }
}


#Preview {
    HomeTabsView()
}
