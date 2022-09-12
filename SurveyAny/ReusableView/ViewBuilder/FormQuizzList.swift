//
//  FormQuizzList.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 9/9/22.
//

import Foundation
import SwiftUI

struct FormQuizzList <Content>: View where Content: View{
    
    private var cellHeight:CGFloat = 200;
    var content: Content
    
    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    
    var body: some View {
        VStack{
            List{
                ForEach(0..<10){ form in
                    FormListCell(cellHeight: cellHeight)
                        .cornerRadius(10)
                        .frame(height: cellHeight, alignment: .leading)
                }
                .background(Color.clear)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                  
            }
            
            content
        }
    }
}


extension FormQuizzList where Content == EmptyView {
    
    init(){
        self.init{
            EmptyView()
        }
    }
}
