//
//  AccessibilityPracticeApp.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/4/25.
//
import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
       
        return true
    }
}

@main
struct AccessibilityPracticeApp: App {
    // Declare the accounts array as a state property
    @State private var accounts: [AccountModel] = [
        AccountModel(type: "Personal Checking", balance: 100.10, accountNumber: "12345", routingNumber: "0008"),
        AccountModel(type: "Savings Account", balance: 80000.00, accountNumber: "9876", routingNumber: "0008")
    ]
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            // Pass the binding of accounts to ContentView
            ContentView(accounts: $accounts)
                
        }
    }
}
