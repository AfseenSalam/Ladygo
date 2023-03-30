//
//  MyReviewPage.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/29/23.
//

import SwiftUI

struct MyReviewPage: View {
    var body: some View {
       
                ZStack {
                    Color("Background")
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                            .frame(height:5)
                        Text("My Reviews")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(Color("Green"))
                        Spacer()
                            .frame(width: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
                        VStack (spacing:20){
                            HStack {
                        Image("Mexico1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 65.0, height: 59.0)
                                Text("Mexico")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    .frame(width: 248.0, height: 59.0)
                                    .background(Color("Green"))
                            }
                            HStack {
                                Image("Tokyo1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 65.0, height: 59.0)
                                Text("Japan")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    .frame(width: 248.0, height: 59.0)
                                    .background(Color("Green"))
                            }
                            HStack{
                                Image("Cloisters1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 65.0, height: 59.0)
                                Text("Bahamas")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    .frame(width: 248.0, height: 59.0)
                                    .background(Color("Green"))
                            }
                        }
                        Spacer()
                    }
                }
            }
        }

      
struct MyReviewPage_Previews: PreviewProvider {
    static var previews: some View {
        MyReviewPage()
    }
}
