//
//  ExploreTabView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct ExploreTabView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.05).ignoresSafeArea(.all, edges: .bottom)
            
            VStack(spacing: 10) {
                VStack {
                    HStack(spacing: 14) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 18, height: 18)
                        
                        Text("Start you search...")
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .shadow(color: .gray, radius: 10, x: 0, y: 2)
                    )
                    .padding(.horizontal, 20)
                }.padding(.top, 70).background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(
                            LinearGradient(
                                colors: [.white, .gray.opacity(0.5)],
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                )
                
                HStack{
                    HomeTabsView()
                }
                
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    ExploreTabView()
}
