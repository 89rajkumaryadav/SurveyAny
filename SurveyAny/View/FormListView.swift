//
//  FormListView.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 26/01/22.
//

import SwiftUI

struct FormListView: View {
    
    private var cellHeight:CGFloat = 200;
    var body: some View {
       
            List{
                ForEach(0..<10){ form in
                    FormListCell(cellHeight: cellHeight)
                        .cornerRadius(10)
                        .frame(height: cellHeight, alignment: .leading)
                }
                .background(Color.clear)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                  
            }
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormListView()
            
    }
}




































