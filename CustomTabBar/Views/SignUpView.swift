//
//  SignUpView.swift
//  CustomTabBar
//
//  Created by JJ Oh on 12/27/22.
//

import SwiftUI

struct SignUpView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var errorText = ""
    @State private var showError = false
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Create a new account")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            TextField("Name", text: $name)
                .padding()
                .background(Color(.white))
                .cornerRadius(5.0)
                .shadow(radius: 10)
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
            
            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .background(Color(.white))
                .cornerRadius(5.0)
                .shadow(radius: 10)
                .padding(.bottom, 20)
            
            Button(action: {
                // Validate name, email, password, and confirm password
                if self.name.isEmpty || self.email.isEmpty || self.password.isEmpty || self.confirmPassword.isEmpty {
                    self.errorText = "Please fill out all fields"
                    self.showError = true
                } else if self.password != self.confirmPassword {
                    self.errorText = "Passwords do not match"
                    self.showError = true
                } else {
                    // Save the new user's information
                    // Note: You will need to implement a way to save the new user's information, such as using a database or storing the information in UserDefaults
                    
                    // Navigate back to the login view
                    self.isPresented = false
                }
            }) {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
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


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(isPresented: .constant(true))
    }
}
