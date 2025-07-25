//
//  ContentView.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/21/25.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            WelcomeScreen(
                onLogin: { path.append("login") },
                onCreateAccount: { path.append("createAccount") }
            )
            .navigationDestination(for: String.self) { destination in
                switch destination {
                case "login":
                    LoginScreen()
                case "createAccount":
                    CreateAccountScreen()
                default:
                    EmptyView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
