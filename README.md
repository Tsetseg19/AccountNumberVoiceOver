### **User Stories for Accessibility Practice Banking Mobile App MVP**  

#### 1. User Authentication
As a user,  
I want to log in securely using Firebase authentication,  
So that I can access my banking services conveniently.  

Acceptance Criteria:  
- Users can sign in using email/password login.  
- Firebase authentication ensures secure access.  
- Error messages are provided for incorrect credentials.  
- Voice accessibility reads out login instructions and error messages.  

#### 2. Voice Accessibility for Every Screen  
As a user with visual impairments,  
I want to have voice accessibility enabled across all screens,  
So that any user can navigate and use the app without needing to see the screen.  

Acceptance Criteria: 
- Each UI element supports VoiceOver (iOS).  
- Users can hear descriptions of buttons, input fields, and key information.  
- Voice commands allow navigation through key app features.  
- Voice feedback is available for errors and confirmations.  

#### 3. Bank Location Search
As a user,  
I want to search for nearby bank branches and ATMs,  
So that I can find the closest location for my banking needs.  

Acceptance Criteria: 
- Users can enter a location or use GPS to find nearby branches.  
- Results show bank name, address, and distance from the user.  
- Map integration allows viewing branch locations.  
- Voice accessibility reads out search results and directions.  

## Accessibility Practice Started with This Implementation!

### VoiceOver Account Number 

The Accounts screen features a list of accounts, with each list item containing:  
- Built-in images  
- Account type  
- Account number  
- Routing number  

#### Overview  
AccessibilityPractice is an iOS application that demonstrates an Account Screen** structured in MVVM architecture with modular components. The app incorporates VoiceOver (iOS) SwiftUI accessibility, ensuring that screen readers can accurately read out account information. This approach enhances accessibility for visually impaired users by providing clear auditory cues for each piece of account information.  

#### Features 
- Modular Accounts Screen following MVVM architecture
- VoiceOver Support for reading:  
  - Built-in images  
  - Account type  
  - Account number (digit by digit) 
  - Routing number (digit by digit) 


