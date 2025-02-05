//
//  AccessibilityPracticeApp.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/4/25.
//
import SwiftUI

@main
struct AccessibilityPracticeApp: App {
    // Declare the accounts array as a state property
    @State private var accounts: [AccountModel] = [
        AccountModel(type: "Personal Checking", balance: 100.10, accountNumber: "12345", routingNumber: "0008"),
        AccountModel(type: "Savings Account", balance: 80000.00, accountNumber: "9876", routingNumber: "0008")
    ]
    
    var body: some Scene {
        WindowGroup {
            // Pass the binding of accounts to ContentView
            ContentView(accounts: $accounts)
                
        }
    }
}
