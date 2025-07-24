//
//  LoginScreen.swift
//  RecipeHub
//
//  Created by Esther Kang on 7/22/25.
//

import SwiftUI

struct CreateAccountScreen: View {
    @ObservedObject var viewModel: CreateAccountViewModel = CreateAccountViewModel()
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

                TextField(
                    "enter email here",
                    text: $viewModel.email
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
                action: viewModel.createaccount,
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

struct CreateAccountScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountScreen()
    }
}
