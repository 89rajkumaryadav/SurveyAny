//
//  HomeView.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 26/01/22.
//

import SwiftUI

struct HomeView: View {
    
    init() {
        styleTabBar()
    }
    
    var body: some View {
        
       
        TabView{
            FormListView()
                .tabItemSetup(title: "Forms", imageName: "newspaper.fill", tag: 0)
               
            
            QuizzesView()
                .tabItemSetup(title: "Quizzes", imageName: "q.circle", tag: 1)
                
            
            DraftsView()
                .tabItemSetup(title: "Drafts", imageName: "mail.stack", tag: 2)
                
            
            MyAccountView()
                .tabItemSetup(title: "Account", imageName: "person.fill", tag: 3)
                
        }.accentColor(Color("PrimeryColor"))
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}


