//
//  ExperiencesTopTabView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/18/25.
//

import SwiftUI

struct ExperiencesTopTabView: View {
    var body: some View {
        ScrollView {
            ZStack {
                VStack(spacing: 16) {
                    VStack {
                        HStack {
                            Text("The design and animation style should follow Airbnb’s.")
                                .font(.system(size: 14, weight: .regular))
                                .padding(.trailing)
                            
                            Image("homes")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }.frame(maxWidth: .infinity)
                    }
                    .padding(.vertical, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 14)
                            .fill(.white)
                            .shadow(color: .gray.opacity(0.5), radius: 8, x: 2, y: 2)
                    )
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    
                    VStack(spacing: 12) {
                        CategoryTitleView(title: "Recently viewed homes")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 18) {
                                ForEach(homeData) { data in
                                    HomeListView(title: data.title, subTitle: data.subTitle, rating: data.rating, image: data.image, prdWidth: 155, prdHeight: 100)
                                }
                            }.padding(.horizontal, 20)
                        }
                        
                        Spacer().frame(height: 0)
                        
                        CategoryTitleView(title: "Stay near Wembley stadium")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 18) {
                                ForEach(homeData) { data in
                                    HomeListView(title: data.title, subTitle: data.subTitle, rating: data.rating, image: data.image, prdWidth: 275, prdHeight: 165)
                                }
                            }.padding(.horizontal, 20)
                        }
                    }
                }.padding(.bottom, 90)
            }
        }
    }
}

#Preview {
    ExperiencesTopTabView()
}
