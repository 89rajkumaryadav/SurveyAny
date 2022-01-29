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
       
       ZStack{
            Image("flower")
                .resizable() // allow image to be resizable
                      .scaledToFill() // scale your image as you need it to fill or to fit
                      .frame(height: 200, alignment: .center) // set image frame size
                      .aspectRatio(contentMode: .fill) // image aspect ratio
                      .clipped()
                
        }
    }
}

struct FormListCell_Previews: PreviewProvider {
    static var previews: some View {
        FormListCell()
    }
}
