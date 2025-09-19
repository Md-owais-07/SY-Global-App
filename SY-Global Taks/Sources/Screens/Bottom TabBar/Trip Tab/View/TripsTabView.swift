//
//  TripsTabView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct TripsTabView: View {
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.05).ignoresSafeArea(.all, edges: .bottom)
            
            VStack {
                VStack(spacing: 0) {
                    
                    HStack {
                        Text("Trips")
                            .font(.system(size: 24, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                        
                        ZStack {
                            
                        }.frame(width: 35, height: 35)
                        
                        
                    }.padding(.horizontal, 20).padding(.top, 5)
                    
                    Spacer()
                    
                    Divider()
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
    TripsTabView()
}
