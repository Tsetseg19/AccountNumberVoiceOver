//
//  AccountRowView.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/5/25.
//

import SwiftUI
import Combine

// AccountRowView to display each account's details
struct AccountRowView: View {
    var account: AccountModel
    var accountViewModel: AccountsViewModel// Receiving a single account
    
    var body: some View {
        VStack{
            HStack {
               
                    Image(systemName: account.type == "Personal Checking" ? "wallet.bifold" : "dollarsign.bank.building.fill")
                
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .accessibilityLabel(account.type == "Personal Checking" ? "Wallet Icon" : "Bank Icon")
               
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Text(account.type)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .accessibilityLabel("\(account.type) Account")
                            
                        HStack{
                            Text("Account Number: \(account.accountNumber)")
                                .font(.body)
                                .padding(8)
                                .background(Color(UIColor.secondarySystemBackground))
                                .cornerRadius(8)
                                .accessibilityLabel("Account Number")
                                .accessibilityValue(accountViewModel.formattedAccountNumber(account.accountNumber))
                        }
                        
                        
                        HStack{
                            Text("Routing Number: \(account.routingNumber)")
                                .font(.body)
                                .padding(8)
                                .background(Color(UIColor.secondarySystemBackground))
                                .cornerRadius(8)
                                .accessibilityLabel("Account routing Number")
                            
                                .accessibilityValue(accountViewModel.formattedAccountNumber(account.routingNumber))
                        
                        }
                }
                    .accessibilityElement(children: .contain) // Combine all elements for accessibility
                
                .padding(.vertical, 10)
                .padding(.leading, 10)
            }
           
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(UIColor.systemGroupedBackground)) // Card-like background
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding(.bottom, 10)
    }
}
#Preview {
    AccountRowView(
        account: AccountModel(type: "Personal Checking", balance: 100.10, accountNumber: "12345", routingNumber: "0008"),
        accountViewModel: AccountsViewModel(accounts: .constant([AccountModel(type: "Personal Checking", balance: 100.10, accountNumber: "12345", routingNumber: "0008")]))
    )
}

