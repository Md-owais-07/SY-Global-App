//
//  HomeListView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/18/25.
//

import SwiftUI

struct HomeListView: View {
    
    var title: String
    var subTitle: String
    var rating: Double
    var image: String
    var prdWidth: CGFloat
    var prdHeight: CGFloat
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading, spacing: 10) {
                ZStack(alignment: .topTrailing) {
                    Image(image)
                        .resizable()
                        .frame(width: prdWidth, height: prdHeight)
                        .cornerRadius(16)
                    
                    HStack {
                        Button {
                            //
                        } label: {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 20, height: 18)
                                .padding([.top, .trailing], 12)
                                .foregroundStyle(.black)
                        }
                    }
                }.background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.gray.opacity(1.0))
                        .shadow(color: .gray, radius: 4, x: 0, y: 4)
                )
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 15, weight: .semibold))
                    
                    HStack(spacing: 0) {
                        Text(subTitle)
                        
                        Spacer().frame(width: 16)
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 12, height: 12)
                        
                        Spacer().frame(width: 4)
                        
                        Text(rating.formatted(.number.precision(.fractionLength(1))))
                        
                    }.font(.system(size: 13, weight: .semibold)).foregroundStyle(.gray)
                }
            }
        }
    }
}

#Preview {
    HomeListView(title: "demo", subTitle: "demo", rating: 5.0, image: "ht4", prdWidth: 155, prdHeight: 100)
}
