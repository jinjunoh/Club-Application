//
//  LoginView.swift
//  CustomTabBar
//
//  Created by JJ Oh on 12/27/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
        @State private var password = ""
        @State private var errorText = ""
        @State private var showError = false
        @State private var showSignUp = false
        
        var body: some View {
            VStack {
                Text("Welcome to Canvas App!")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(5.0)
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(5.0)
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
                
                Button(action: {
                    // Validate email and password
                    if self.email == "test@example.com" && self.password == "password" {
                        // Navigate to the home view
                        ContentView()

                    } else {
                        self.errorText = "Invalid email or password"
                        self.showError = true
                    }
                }) {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
                
                Button(action: {
                    // Show the sign up view
                    self.showSignUp = true
                }) {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
                .sheet(isPresented: $showSignUp) {
                    SignUpView(isPresented:self.$showSignUp)
                }
                
                if showError {
                    Text(errorText)
                        .font(.caption)
                        .foregroundColor(.red)
                        .padding()
                }
            }
        }
    }



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
