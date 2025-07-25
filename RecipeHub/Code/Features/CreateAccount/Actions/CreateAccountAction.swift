//
//  LoginAction.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/22/25.
//

import Foundation

struct CreateAccountAction {
    var parameters: CreateAccountRequest
    func call(completion: @escaping (CreateAccountResponse) -> Void) {
        let scheme: String = "http"
        let host: String = "127.0.0.1"
        let port: Int = 8080
        let path = "/api/auth/register"

        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.port = port
        components.path = path

        guard let url = components.url else {
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"

        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")

        do {
            request.httpBody = try JSONEncoder().encode(parameters)
        } catch {
            print("Encoding error")
            return
        }

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Network error: \(error)")
                return
            }

            if let httpResponse = response as? HTTPURLResponse {
                print("Status code: \(httpResponse.statusCode)")
            }

            guard let data = data else {
                print("No data returned")
                return
            }

            do {
                let response = try JSONDecoder().decode(CreateAccountResponse.self, from: data)
                completion(response)
            } catch {
                print("You have an overlapping username or email. Please try again.")
            }
        }

        task.resume()
    }
}
