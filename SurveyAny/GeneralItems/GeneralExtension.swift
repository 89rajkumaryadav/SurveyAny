//
//  GeneralExtension.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/8/22.
//

import Foundation
import SwiftUI


//MARK: Tabbar style changing

    
    // Customizing stock TabBar to match our design requirements
     func styleTabBar() {
        // Inactive bar item color
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "SeconderyColor")
        
        let tabBarItemAppearance = UITabBarItemAppearance()
        tabBarItemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .semibold), NSAttributedString.Key.foregroundColor: UIColor(named: "SeconderyColor")!]
        tabBarItemAppearance.normal.iconColor = UIColor(named: "SeconderyColor")!
        
        tabBarItemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .bold), NSAttributedString.Key.foregroundColor: UIColor(named: "PrimeryColor")!]
        
        // Tab background color
       let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithTransparentBackground()
       tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
        UITabBar.appearance().standardAppearance = tabBarAppearance
         UITabBar.appearance().backgroundColor = .white
        // Remove default top border (to add custom one below)
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().clipsToBounds = true
    }
 

//MARK: get Clipped Image
func getResizedClippedImage(image: String) -> some View{
    Image(image)
        .resizable() // allow image to be resizable
              .scaledToFill() // scale your image as you need it to fill or to fit
              .aspectRatio(contentMode: .fill) // image aspect ratio
              .clipped()
}
