//
//  ProfileTabView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/17/25.
//

import SwiftUI

struct ProfileTabView: View {
    @State private var viewModel = ProfileViewModel()
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.05).ignoresSafeArea(.all, edges: .bottom)
            
            VStack(spacing: 0) {
                
                VStack(spacing: 0) {
                    
                    ZStack {
                        HStack {
                            Text("Profile")
                                .font(.system(size: 24, weight: .medium))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            Button {
                                //
                            } label: {
                                ZStack {
                                    Color.gray.opacity(0.2)
                                    Image(systemName: "bell")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundStyle(.black)
                                }.frame(width: 35, height: 35).clipShape(.circle)
                            }
                        }
                        
                    }.background(.white).padding(.horizontal, 20).padding(.top, 5)
                    
                    Spacer()
                    
                    Divider().frame(height: 1)
                }
                .frame(height: 50).background(.white)
                
                ScrollView {
                    VStack(spacing: 14) {
                        
                        VStack {
                            VStack(spacing: 12) {
                                ZStack {
                                    Color.black
                                    Text("S")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 34, weight: .heavy))
                                    
                                }.frame(width: 80, height: 80).clipShape(.circle)
                                
                                VStack {
                                    Text("SY GROUP")
                                        .font(.system(size: 24, weight: .semibold))
                                    
                                    Text("Guest")
                                        .font(.system(size: 12, weight: .medium))
                                        .foregroundStyle(.gray)
                                }
                            }.frame(maxWidth: .infinity).padding(.vertical, 14)
                        }.background(
                            RoundedRectangle(cornerRadius: 14)
                                .fill(.white)
                                .shadow(color: .gray.opacity(0.4), radius: 6, x: 0, y: 1)
                        )
                        
                        HStack(spacing: 18) {
                            Button {
                                //
                            } label: {
                                VStack {
                                    VStack(spacing: 16) {
                                        Image("travel")
                                            .resizable()
                                            .frame(width: 60, height: 50, alignment: .center)
                                        
                                        Text("Past trips")
                                            .font(.system(size: 14, weight: .regular))
                                            .foregroundStyle(.black)
                                    }.frame(maxWidth: .infinity).padding(.vertical, 14)
                                }.background(
                                    RoundedRectangle(cornerRadius: 14)
                                        .fill(.white)
                                        .shadow(color: .gray.opacity(0.4), radius: 6, x: 0, y: 1)
                                )
                            }
                            
                            
                            Button {
                                //
                            } label: {
                                VStack {
                                    VStack(spacing: 16) {
                                        Image("connection")
                                            .resizable()
                                            .frame(width: 60, height: 50, alignment: .center)
                                        
                                        Text("Connections")
                                            .font(.system(size: 14, weight: .regular))
                                            .foregroundStyle(.black)
                                    }.frame(maxWidth: .infinity).padding(.vertical, 14)
                                }.background(
                                    RoundedRectangle(cornerRadius: 14)
                                        .fill(.white)
                                        .shadow(color: .gray.opacity(0.4), radius: 6, x: 0, y: 1)
                                )
                            }
                            
                        }
                        
                        VStack {
                            Button {
                                //
                            } label: {
                                HStack(spacing: 18) {
                                    Image("host")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    
                                    
                                    VStack(alignment: .leading, spacing: 2) {
                                        Text("Become a host")
                                            .font(.system(size: 15, weight: .medium))
                                            .foregroundStyle(.black)
                                        
                                        Text("It's easy to start hosting & earn extra money.")
                                            .font(.system(size: 12, weight: .regular))
                                            .foregroundStyle(.gray)
                                    }
                                }.frame(maxWidth: .infinity).padding(.vertical, 20)
                            }.background(
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.4), radius: 10, x: 0, y: 1)
                            )
                        }
                        
                        VStack(spacing: 0) {
                            ForEach(viewModel.profileItems) { item in
                                ReusableButtonView(action: item.action, image: item.icon, title: item.title)
                                
                                if item.title == "Privacy" {
                                    Spacer().frame(height: 16)
                                    Divider()
                                        .padding(.leading, 40)
                                    Spacer().frame(height: 16)
                                }
                            }
                        }
                        
                    }.padding(.horizontal, 20).padding(.top, 16)
                }.scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    ProfileTabView()
}
