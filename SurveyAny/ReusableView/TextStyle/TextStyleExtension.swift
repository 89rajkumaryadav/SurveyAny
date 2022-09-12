//
//  TextStyleExtension.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/12/22.
//

import Foundation
import SwiftUI




 extension Text{
    
    //MARK: Text style used for - Login page -> "signup, forgot password and login with google" button
    func seconderTextStyle() -> some View {
        self
        .font(.headline)
        .foregroundColor(Color("SeconderyColor"))
    }
}
