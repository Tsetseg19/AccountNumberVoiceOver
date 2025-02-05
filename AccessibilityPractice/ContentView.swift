// ContentView where the accounts list is displayed

import SwiftUICore
import SwiftUI
struct ContentView: View {
    @Binding var accounts: [AccountModel]
    
    @StateObject var accntViewModel: AccountsViewModel
    
    init(accounts: Binding<[AccountModel]>) {
        _accounts = accounts
        _accntViewModel = StateObject(wrappedValue: AccountsViewModel(accounts: accounts))
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(accntViewModel.accounts, id: \.accountNumber) { account in
                        AccountRowView(account: account, accountViewModel: accntViewModel)
                    }

                }
                

                .padding()
                .onAppear {
                    // Provide an accessibility announcement when the view appears
                    UIAccessibility.post(notification: .announcement, argument: "Welcome to your accounts view.")
                }
                .onTapGesture {
                    // Announce a message when a hand gesture (tap) is performed
                    let announcement = "You tapped on the screen."
                    UIAccessibility.post(notification: .announcement, argument: announcement)
                }
            }
           
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Accounts")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .accessibility(label: Text("Accounts"))
                        .accessibilityHint("Screen with List of all accounts")
                }
            }
        }
        
        .padding()
    }
}

#Preview {
    ContentView(accounts: .constant([AccountModel(type: "Personal Checking", balance: 100.10, accountNumber: "12345", routingNumber: "0008"),
                                     AccountModel(type: "Savings Account", balance: 80000.00, accountNumber: "9876", routingNumber: "0008")]))
}
