//
//  LoginScreen.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/22/25.
//

import SwiftUI

struct LoginScreen: View {
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    var body: some View {
        VStack {
            Spacer()
            VStack {
                TextField(
                    "enter username here",
                    text: $viewModel.username
                )
                .disableAutocorrection(true)
                .padding(.top, 20)

                Divider()

                SecureField(
                    "enter password here",
                    text: $viewModel.password
                )
                .padding(.top, 20)

                Divider()
            }

            Spacer()

            Button(
                action: viewModel.login,
                label: {
                    Text("Log In")
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

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
