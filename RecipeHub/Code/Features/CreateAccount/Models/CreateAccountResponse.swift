//
//  LoginResponse.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/22/25.
//

import Foundation

struct CreateAccountResponse: Identifiable, Decodable {
    let id: Int
    let username: String
    let email: String
    let password: String
    let createdAt: String
}
