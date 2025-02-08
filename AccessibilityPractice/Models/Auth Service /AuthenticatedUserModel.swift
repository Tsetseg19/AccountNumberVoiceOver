//
//  UserModel.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/8/25.
//

import Foundation
import FirebaseAuth

struct AuthenticatedUserModel {
    var uid: String
    var email: String?
    
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
       
    }
}
