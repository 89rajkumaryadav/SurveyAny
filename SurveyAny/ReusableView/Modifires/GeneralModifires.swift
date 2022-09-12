//
//  Modifires.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/8/22.
//

import Foundation
import SwiftUI


//MARK: TabView - TabItem modifire with title image and tag
struct tabItemModifire: ViewModifier{
   
    var title: String
    var imageName: String
    var tag: Int
    
    func body(content: Content) -> some View {
        content
            .tabItem {
                
                Label {
                    Text(title)
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                } icon: {
                    Image(systemName: imageName)
                }

            Label(title, systemImage: imageName)
        }
    }
      
}



//MARK: View:-  Rounded background on view - used for card view

    struct RoundedCardBackground: ViewModifier{
        var color: Color
        func body(content: Content) -> some View {
            content
                .padding()
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        }
    }


//MARK: View:-  Rounded background on view - used for Button view
struct RoundedButtonBackground: ViewModifier {
    var color: Color
    func body(content: Content) -> some View {
        content
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .background(color)
        .cornerRadius(40)
        .padding()
    }
}


extension View {
    
    func tabItemSetup(title:String, imageName:String, tag:Int) -> some View {
        self.modifier(tabItemModifire(title: title, imageName: imageName, tag: tag))
    }
    
    func setRoundedBackground(color: Color) -> some View {
        self.modifier(RoundedCardBackground(color: color))
    }
    
    func setRoundedButtonBackground(color: Color) -> some View {
        self.modifier(RoundedButtonBackground(color: color))
    }
    
}




























