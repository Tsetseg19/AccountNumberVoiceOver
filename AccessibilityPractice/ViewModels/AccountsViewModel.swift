//
//  AccountViewModel.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/5/25.
//
import Foundation
import SwiftUI

class AccountsViewModel: ObservableObject {
    @Binding var accounts: [AccountModel]
    
    init(accounts: Binding<[AccountModel]>) {
        _accounts = accounts
    }
    
    // Function to format the account number for VoiceOver
    public func formattedAccountNumber(_ number: String) -> String {
        return number.map { String($0) }.joined(separator: " ")
    }
}

