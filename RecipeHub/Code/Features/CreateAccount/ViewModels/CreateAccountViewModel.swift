//
//  LoginViewModel.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/22/25.
//

import Foundation

class CreateAccountViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""

    func createaccount() {
        CreateAccountAction(
            parameters: CreateAccountRequest(
                username: username,
                email: email,
                password: password
            )
        ).call { response in
            print("username", response.username)
        }
    }
}
