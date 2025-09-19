//
//  WishlistTabView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct WishlistTabView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.05).ignoresSafeArea(.all, edges: .bottom)
            
            VStack {
                VStack(spacing: 0) {
                    
                    HStack {
                        Text("Wishlists")
                            .font(.system(size: 24, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                        
                        ZStack {
                            
                        }.frame(width: 35, height: 35)
                        
                    }.padding(.horizontal, 20).padding(.top, 5)
                    
                    Spacer()
                    
                    Divider().frame(height: 1)
                }
                .frame(height: 50).background(.white)
                
                Spacer()
                
                Text("Coming soon...")
                
                Spacer()
            }
        }
    }
}

#Preview {
    WishlistTabView()
}
