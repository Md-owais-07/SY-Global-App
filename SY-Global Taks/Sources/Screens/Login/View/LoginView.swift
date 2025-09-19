//
//  LoginView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/16/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        ZStack {
            Color("AppColor").ignoresSafeArea(.all)
            
            VStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Welcome Back")
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundStyle(.black)
                    
                    Text("Welcome Back! Please Enter Your Details.")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundStyle(.gray)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 52)
                .padding(.bottom, 32)
                
                Spacer()
                
                VStack(spacing: 16) {
                    CustomTextFieldView(title: "Email", placeholder: "Enter Your Email", text: $viewModel.emailTextField).keyboardType(.emailAddress)
                    CustomTextFieldView(title: "Password", placeholder: "••••••••", text: $viewModel.passwordTextField, isSecure: true).keyboardType(.asciiCapable)
                }
                .padding(.bottom, 16)
                
                
                HStack(spacing: 8) {
                    Button {
                        //
                    } label: {
                        Image("rect")
                            .resizable()
                            .frame(width: 16, height: 16)
                    }
                    
                    Text("Remember For 30 Days")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(Color("subTextClr"))
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("Forgot Password")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(.red)
                    }
                    
                }
                .padding(.bottom, 24)
                
                VStack(spacing: 16) {
                    Button {
                        if viewModel.emailTextField.isEmpty || viewModel.passwordTextField.isEmpty {
                            print("Email and Password fields are required")
                        } else {
                            print("Login Success!")
                        }
                    } label: {
                        Text("Log In")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 48)
                            .background(.pink)
                            .cornerRadius(16)
                    }
                    
                    HStack {
                        Divider()
                            .frame(height: 1)
                            .frame(maxWidth: .infinity)
                            .background(.gray.opacity(0.5))
                        
                        Text("or")
                            .font(.system(size: 14, weight: .regular))
                        
                        Divider()
                            .frame(height: 1)
                            .frame(maxWidth: .infinity)
                            .background(.gray.opacity(0.5))
                    }
                    
                    
                    VStack(spacing: 10) {
                        CustomButtonView(action: {
                            //
                        }, title: "Continue With Email", imageName: "mail", bgColor: .white, textColor: .red)
                        
                        CustomButtonView(action: {
                            //
                        }, title: "Continue With Apple", imageName: "apple", bgColor: .white, textColor: .red)
                        
                        CustomButtonView(action: {
                            //
                        }, title: "Continue With Google", imageName: "google", bgColor: .white, textColor: .red)
                        
                        CustomButtonView(action: {
                            //
                        }, title: "Continue With Facebook", imageName: "fb", bgColor: .white, textColor: .red)
                    }
                }
                .padding(.bottom, 24)
                
//                HStack {
//                    Text("Don't Have An Account?")
//                        .font(.system(size: 14, weight: .regular, design: .default))
//                        .foregroundStyle(Color("subTextClr"))
//                    
//                    Button {
//                        
//                    } label: {
//                        Text("Sign Up For Free")
//                            .font(.system(size: 14, weight: .medium, design: .default))
//                            .foregroundStyle(Color("textClr"))
//                    }
//                }
            }
        }
    }
}

#Preview {
    LoginView()
}
