//
//  LoginViewModel.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/22/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""

    func login() {
        LoginAction(
            parameters: LoginRequest(
                username: username,
                password: password
            )
        ).call { _ in
            // Login successful, navigate to the Home screen
        }
    }
}
