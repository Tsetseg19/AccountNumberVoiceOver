//
//  BankLocationSearchView.swift
//  AccessibilityPractice
//
//  Created by Enkhtsetseg Unurbayar on 2/7/25.
//

import SwiftUI

struct BankLocationSearchView: View {
    var body: some View {
        Text("Search Bank Location")
        VStack{
            HStack(spacing: 20){
                Image(systemName: "magnifyingglass")
                TextField("Search", text: .constant(""))
            }
            .padding()
        }
        
    }
}

#Preview {
    BankLocationSearchView()
}
