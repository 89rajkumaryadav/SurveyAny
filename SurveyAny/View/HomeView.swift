//
//  HomeView.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 26/01/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        TabView{
            FormListView()
                .tabItem {
                    Label("Forms", systemImage: "newspaper.fill")
                }
            
            Text("Quizzes")
                .tabItem {
                    Label("Quizzes", systemImage: "q.circle")
                }
            
            Text("Drafts")
                .tabItem {
                    Label("Drafts", systemImage: "mail.stack")
                }
            
            Text("More")
                .tabItem {
                    Label("More", systemImage: "ellipsis")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
