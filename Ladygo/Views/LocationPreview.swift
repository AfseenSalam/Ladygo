//
//  LocationPreview.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/27/23.
//

import SwiftUI

struct LocationPreview: View {
    @EnvironmentObject private var vm:HomePageViewModel
    let location : Location
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing:16) {
                imageSection
                titleSection
                
            }
            
            VStack {
                Button{
                    vm.sheetLocation = location
                }
            label:{
                Text("Learn more")
                    .font(.headline)
            }.buttonStyle(.borderedProminent)
                    .padding()
            }
        }.background(RoundedRectangle(cornerRadius: 10).fill(.ultraThinMaterial)).padding()
    }
}

struct LocationPreview_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            
            LocationPreview(location: LocationsDataService.locations.first!)
        }
    }
}
extension LocationPreview{
    private var imageSection:some View{
        ZStack {
            if let imageName = location.imageNames.first{
                Image(imageName).resizable().scaledToFit()
                    .frame(width:100,height:100)
                    .cornerRadius(10)
            }
        }.padding(6).background(Color.white)
            .cornerRadius(10)
        
    }
    private var titleSection:some View{
        VStack(alignment: .leading){
            Text(location.name)
                .font(.title)
                
                
            
            Text(location.cityName)
                .font(.subheadline)
                .fontWeight(.black)
            
        }.frame(maxWidth:.infinity,alignment: .leading)
        
    }
}
