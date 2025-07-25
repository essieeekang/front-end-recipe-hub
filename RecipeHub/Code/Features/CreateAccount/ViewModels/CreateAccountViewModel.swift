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

    func createaccount(completion handler: @escaping () -> Void) {
        CreateAccountAction(
            parameters: CreateAccountRequest(
                username: username,
                email: email,
                password: password
            )
        ).call { response in
            print("Welcome! Your new username is: ", response.username)
            handler()
        }
    }
}
