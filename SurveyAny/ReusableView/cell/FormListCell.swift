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
       
        VStack(content: {
            Spacer()
           
            BottomTitleBar(title: "Customer Feedback Form", subTitle: "0 response - Modified: 08 Sep 2022")
        }).background(getResizedClippedImage(image: "flower"))
          .frame(height: 200.0)
    }

}

 


struct FormListCell_Previews: PreviewProvider {
    static var previews: some View {
        FormListCell().frame(height:200.0)
    }
}



//MARK: Title subTitleBar with gray opacity

struct BottomTitleBar : View {
    var title: String
    var subTitle: String
    var body: some View{
        HStack {
            VStack(alignment: .leading){
              Text(title)
                    .font(.title3)
               Text(subTitle)
                    .font(.subheadline)
            }
           .foregroundColor(.white)
           .padding(8)
           
            Spacer()
        }.background(Color.black.opacity(0.5))
    }
    
}



