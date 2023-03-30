//
//  ReviewPageView.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/28/23.
//

import SwiftUI

struct ReviewPageView: View {
   @State var review: String = ""
          var body: some View {
            ZStack{
              Color.init(red: 0.678, green: 0.565, blue: 0.533)
                .ignoresSafeArea()
              VStack (spacing: 60){
                Text("Reviews")
                  .frame(width: 339, height: 53)
                  .font(.title)
                  .overlay(Rectangle()
                    .stroke(.black, lineWidth: 2))
                  .background(Color("Green"))
                TextField("Leave a Review!", text:$review, axis: .vertical)
                  .padding(.leading, 10)
                  .frame(width: 339, height: 350, alignment: .top)
                   .overlay(Rectangle()
                  .stroke(.black, lineWidth: 2))
                Button {
                } label: {
                  Text("Submit")
                    .frame(width: 200, height: 38)
                    .foregroundColor(.black)
                    .bold()
                    .background(Color("Green"))
                    .cornerRadius(10)
                }
              }
              }
            }
    }


struct ReviewPageView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewPageView()
    }
}
