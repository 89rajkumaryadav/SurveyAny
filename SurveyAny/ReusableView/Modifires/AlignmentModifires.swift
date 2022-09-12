//
//  AlignmentModifires.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/12/22.
//

import Foundation
import SwiftUI


struct LeftAlignment: ViewModifier{
   
    func body(content: Content) -> some View {
        HStack{
            content
            Spacer()
        }
    }
    
    
}



extension View {
    func forceToLeft() -> some View {
        self.modifier(LeftAlignment())
    }
}
