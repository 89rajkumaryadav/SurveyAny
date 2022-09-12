//
//  LoginPage.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/12/22.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
           // Title
            Text("Enter your login info")
                .font(.title)
                .fontWeight(.bold)
                .forceToLeft()
                .padding(.bottom, 30)
            
            // Username
            TextField("Username", text: $username)
                .setTitleAndBackground(title: "Username")
                
            
            //Password
            SecureField("Password", text: $password)
                .setTitleAndBackground(title: "Password")
            
            
            //Login Button
            Button(action: {
                print("Delete tapped!")
            }) {
                Text("Log in")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding([.top,.bottom],5)
                    .setRoundedButtonBackground(color: Color("PrimeryColor"))
            }
            
          
            
            // Login with google
            
            Button {
                
            } label: {
                Text("Login with Google")
                    .seconderTextStyle()
                    .padding(.bottom,8)
                
            }

            // Forgot password
            
            Button {
                
            } label: {
                Text("Forgot password")
                    .seconderTextStyle()
                    .padding(.bottom,15)
            }
            
            Divider()
            // Signup
            
            Button {
                
            } label: {
                Text("Sing up")
                    .seconderTextStyle()
                
            }
                
        }.padding()
    }
}





struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}





