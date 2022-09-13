//
//  Textfields.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/13/22.
//

import Foundation
import SwiftUI
struct TextFieldTitleV: View {
    
    var isSecure: Bool = false
    var prompt: String = ""
    var placeholder: String
   @Binding var field: String

    
    
    var body: some View{
        VStack(alignment:.leading){
            
            if isSecure {
                SecureField("Password", text: $field)
                    .setTitleAndBackground(title: "Password")
            }else{
                TextField("Username", text: $field)
                    .setTitleAndBackground(title: "Username")
            }
            Text(prompt)
                .font(.caption)
                .foregroundColor(.red)
        }
    }
    
    
}



struct Textfield_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TextFieldTitleV(prompt: "error", placeholder: "Username", field: .constant(""))
        }
    }
}


