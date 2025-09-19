//
//  LoginViewModel.swift
//  SY-Global Taks
//
//  Created by Owais on 9/16/25.
//

import Foundation
internal import Combine

class LoginViewModel: ObservableObject {
    
    @Published var emailTextField: String = ""
    @Published var passwordTextField: String = ""
}
