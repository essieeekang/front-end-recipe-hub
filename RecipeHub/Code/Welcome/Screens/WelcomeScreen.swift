//
//  Welcome.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/24/25.
//

import SwiftUI

struct WelcomeScreen: View {
    @State private var navigate = false
    let onLogin: () -> Void
    let onCreateAccount: () -> Void
    var body: some View {
        Spacer()
        VStack {
            Text("Welcome to RecipeHub!")
                .font(.largeTitle)
            Button(
                action: onLogin,
                label: {
                    Text("Log In")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            )
            Button(
                action: onCreateAccount,
                label: {
                    Text("Create Account")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            )
        }
        .padding(30)
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(
            onLogin: {},
            onCreateAccount: {}
        )
    }
}
