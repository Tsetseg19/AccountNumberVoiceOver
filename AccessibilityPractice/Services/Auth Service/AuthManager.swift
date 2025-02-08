//
//  AuthManager.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/8/25.
//

/*
 CRUD OPERATION FOR AUTHENTICATED USER ON FIREBASE
 */
import Foundation
import FirebaseAuth

final class AuthManager {
    
    public static let shared = AuthManager()
    
    private init(){
        
    }

    
    func getAuthenticatedUser() throws -> AuthenticatedUserModel {
        guard let authenticatedUser = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        return AuthenticatedUserModel(user: authenticatedUser)
    }
    
    func createUser(email: String, password: String) async throws -> AuthenticatedUserModel {
         let newUser = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthenticatedUserModel(user: newUser.user)
    }
    
    
}
