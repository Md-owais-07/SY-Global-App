//
//  MessageTabView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct MessageTabView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.05).ignoresSafeArea(.all, edges: .bottom)
            
            VStack {
                VStack(spacing: 0) {
                    
                    ZStack {
                        HStack {
                            Text("Messages")
                                .font(.system(size: 24, weight: .medium))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            HStack {
                                Button {
                                    //
                                } label: {
                                    ZStack {
                                        Color.gray.opacity(0.2)
                                        Image(systemName: "magnifyingglass")
                                            .resizable()
                                            .frame(width: 15, height: 15)
                                            .foregroundStyle(.black)
                                        
                                    }.frame(width: 35, height: 35).clipShape(.circle)
                                }
                                
                                Button {
                                    //
                                } label: {
                                    ZStack {
                                        Color.gray.opacity(0.2)
                                        Image(systemName: "gear")
                                            .resizable()
                                            .frame(width: 15, height: 15)
                                            .foregroundStyle(.black)
                                        
                                    }.frame(width: 35, height: 35).clipShape(.circle)
                                }
                            }
                        }
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
    MessageTabView()
}
