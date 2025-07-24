//
//  LoginRequest.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/22/25.
//

import Foundation

struct LoginRequest: Encodable {
    let username: String
    let password: String
}
