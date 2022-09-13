//
//  LoginVM.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/13/22.
//

import Foundation

class LoginVM: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    
   
   
    //MARK: Textfield validation method
    
    func isPasswordValid() -> Bool {
        // criteria in regex.  See http://regexlib.com
        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
                                       "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$")
        return passwordTest.evaluate(with: password)
    }
    
    func isUsernameValid() -> Bool {
        let usernameTest = NSPredicate(format: "SELF MATCHES %@", "^.{4,15}$")
        
        return usernameTest.evaluate(with: username)
    }
    
    
   

    //MARK: Validation prompt string
    var passwordPrompt: String {
        guard password.count > 0 else {
            return ""
        }
        if isPasswordValid() {
            return ""
        } else {
            return "Must be between 8 and 15 characters containing at least one number and one capital letter"
        }
    }
    
    var userNamePrompt: String {
        guard username.count > 0 else {
            return ""
        }
        if isUsernameValid() {
            return ""
        }else{
            return "Username must be between 4 and 15 characters."
        }
    }
    
   
}
