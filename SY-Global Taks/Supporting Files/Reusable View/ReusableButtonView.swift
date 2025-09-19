//
//  ReusableButtonView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/19/25.
//

import SwiftUI

struct ReusableButtonView: View {
    let action: () -> Void
    let image: String
    let title: String
    
    var body: some View {
        ZStack {
            Color.clear
            
            Button(action: action) {
                VStack {
                    HStack {
                        HStack(spacing: 20) {
                            Image(systemName: image)
                                .resizable()
                                .frame(width: 18, height: 18)
                            
                            Text(title)
                                .font(.system(size: 12, weight: .regular))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                    }.foregroundStyle(.black.opacity(0.8)).padding(.vertical, 16).background(.clear)
                }
            }
        }
    }
}

#Preview {
    ReusableButtonView(action: {}, image: "person", title: "Profile")
}
