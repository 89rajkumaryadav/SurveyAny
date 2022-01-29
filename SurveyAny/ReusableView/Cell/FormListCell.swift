//
//  FormListCell.swift
//  SurveyAny
//
//  Created by Rajkumar Yadav on 26/01/22.
//

import SwiftUI

struct FormListCell: View {
    
    var cellHeight:CGFloat = 200;
    var body: some View {
       
        ZStack(alignment: .leading){
           
           Image("flower")
               .resizable() // allow image to be resizable
                     .scaledToFill() // scale your image as you need it to fill or to fit
                     .frame(height: 200) // set image frame size
                     .aspectRatio(contentMode: .fill) // image aspect ratio
                     .clipped()
          
          
           
           VStack(alignment: .leading){
               Spacer()
               
               VStack(alignment: .leading){
               Text("Employee Satisfaction")
                       .fontWeight(.semibold)
                   .font(.title2)
                   .foregroundColor(.white)
                   .padding(.horizontal,5)
               Text("1 Response - Modified: 25 Sep 2021")
                       .font(.title3)
                       .foregroundColor(.white)
                       .padding(.horizontal,5)
                   
                      
               }
               .padding(5)
               .frame(maxWidth:.infinity, alignment: .leading)
               
               
               
               
               .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.black.opacity(0.5)))
           }
        }
    }
}

struct FormListCell_Previews: PreviewProvider {
    static var previews: some View {
        FormListCell()
    }
}
