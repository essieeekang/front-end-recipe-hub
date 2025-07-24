//
//  LoginRequest.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/22/25.
//

import Foundation

struct CreateAccountRequest: Encodable {
    let username: String
    let email: String
    let password: String
}
