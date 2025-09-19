//
//  TabbarController.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct TabbarController: View {
    @EnvironmentObject var appNavigation: AppNavigationManager
    
    public enum Tab: String, CaseIterable {
        case explore = "explore"
        case wishlist = "wishlist"
        case trip = "trip"
        case message = "message"
        case profile = "profile"
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $appNavigation.selectedTab) {
                ExploreTabView()
                    .tag(Tab.explore)
                
                WishlistTabView()
                    .tag(Tab.wishlist)
                
                TripsTabView()
                    .tag(Tab.trip)
                
                MessageTabView()
                    .tag(Tab.message)
                
                ProfileTabView()
                    .tag(Tab.profile)
            }
            
            // Custom Tab Bar
            VStack(spacing: 0) {
                HStack(spacing: -10) {
                    ForEach(Tab.allCases, id: \.self) { tab in
                        tabButton(for: tab)
                    }
                }
                
                .padding(.bottom, 0)
                .frame(height: 50)
                .background(Color.white)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    public func tabButton(for tab: Tab) -> some View {
        
        Button(action: {
            withAnimation {
                appNavigation.selectedTab = tab
            }
        }) {
            VStack(spacing: 8) {
                Divider().frame(height: 0.5).background(Color.gray)
                Image(tab.rawValue)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(appNavigation.selectedTab == tab ? Color(.pink) : Color(.gray))
                
                Text(tabTitle(for: tab))
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(appNavigation.selectedTab == tab ? Color(.pink) : Color(.gray))
            }
        }.buttonStyle(PlainButtonStyle())
    }
    
    public func tabTitle(for tab: Tab) -> String {
        switch tab {
        case .explore: return "Explore"
        case .wishlist: return "Wishlists"
        case .trip: return "Trips"
        case .message: return "Messages"
        case .profile: return "Profile"
        }
    }
}


#Preview {
    TabbarController()
        .environmentObject(AppNavigationManager())
}
