//
//  SavedTripView.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/28/23.
//

import SwiftUI

struct SavedTripView: View {
    var body: some View {
        ZStack{
            Color("Background").ignoresSafeArea()
            VStack{
                                Spacer()
                                    .frame(height:5)
                                Text("My Saved Trips")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    .background(Color("Green"))
                                Spacer()
                                    .frame(width: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
                                VStack (spacing:20){
                                    HStack {
                                        Image("Italy").resizable().aspectRatio(contentMode: .fit).frame(width: 65.0, height: 59.0)
                                        
                        Text("Italy").font(.largeTitle)
                                            .fontWeight(.bold)
                                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                            .frame(width: 248.0, height: 59.0)
                                            .background(Color("Green"))
                                    }
                                    HStack {
                                        Image("Jamaica")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 65.0, height: 59.0)
                                        Text("Jamaica")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                            .frame(width: 248.0, height: 59.0)
                                            .background(Color("Green"))
                                    }
                                    HStack{
                                        Image("Thailand")
                                            .resizable().aspectRatio(contentMode: .fit)
                                            .frame(width: 65.0, height: 59.0)
                                        Text("Thailand")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                            .frame(width: 248.0, height: 59.0)
                                            .background(Color("Green"))
                                    }
                                    Spacer()
                                }
                            }
                        }
                    }
                }
                

struct SavedTripView_Previews: PreviewProvider {
    static var previews: some View {
        SavedTripView()
    }
}
