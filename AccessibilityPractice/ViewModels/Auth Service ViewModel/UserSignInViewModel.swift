//
//  UserViewModel.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/8/25.
//

import Foundation
import Combine

public class UserSignInViewModel: ObservableObject{
    
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var isSignedIn: Bool = false
    
    func signIn(){
        
    }
    
}
