//
//  TextFieldModifires.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/12/22.
//

import Foundation
import SwiftUI


extension TextField {
    func setTitleAndBackground(title: String) -> some View {
        self.modifier(TitleBackgroundV(title: title))
    }
    
    
}

extension SecureField {
    func setTitleAndBackground(title: String) -> some View {
        self.modifier(TitleBackgroundV(title: title))
    }
    
    
}


struct TitleBackgroundV: ViewModifier{
    var title: String
    func body(content: Content) -> some View {
       
            VStack(alignment:.leading, spacing: 0){
                Text(title)
                    .font(.headline)
                content
                    .padding(.bottom,10)
            }.setRoundedBackground(color: Color("SeconderyColor").opacity(0.5))
    
    }
}
