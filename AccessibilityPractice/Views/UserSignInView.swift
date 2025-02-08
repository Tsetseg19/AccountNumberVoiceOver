//
//  UserLogInView.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/7/25.
//

import SwiftUI

struct UserSignInView: View {
    var body: some View {

        VStack{
            Text("Hello, Please Sign In!")
            TextField("Username", text: .constant(""))
            SecureField("Password", text: .constant(""))
            Button(action: {}) {
                Text("Sign In")
            }
        }
    }
}

#Preview {
    UserSignInView()
}
