//
//  User.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/7/25.
//

import Foundation
import Combine

public class User: ObservableObject{
    
    @Published var name: String = ""
    @Published var email: String = ""
    
}
