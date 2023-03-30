//
//  DestinationView.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/27/23.
//

import SwiftUI

struct DestinationView: View {
    let location: Location
    @EnvironmentObject private var vm:HomePageViewModel
    var body: some View {
        ScrollView{
            VStack {
               imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20)
                VStack(alignment: .leading,spacing:10) {
                   titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    tipsSection
                    Divider()
                    averageCostSection
                    Divider()
                    dosSection
                    Divider()
                }

            }
        }.background(.ultraThinMaterial)
            .overlay(backButton,alignment:.topLeading)
        .ignoresSafeArea()
    }
}
struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(location: LocationsDataService.locations.first!)
            .environmentObject(HomePageViewModel())
    }
}
extension DestinationView {
    private var imageSection:some View{
        TabView{
            ForEach(location.imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable().scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }.frame(height:500)
        .tabViewStyle(PageTabViewStyle())
    }
    private var titleSection:some View {
        VStack(alignment: .leading,spacing:8) {
            Text(location.name)
                .font(.largeTitle)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
                
        }.frame(maxWidth:.infinity,alignment: .leading).padding()
    }
    private var descriptionSection:some View {
        VStack(alignment: .leading,spacing:8) {
            Text(location.description)
                .foregroundColor(.secondary)
           
        }.frame(maxWidth:.infinity,alignment: .leading).padding()
    }
    private var tipsSection:some View {
        VStack(alignment: .leading,spacing:8) {
            Text(location.tips)
                .foregroundColor(.secondary)
           
        }.frame(maxWidth:.infinity,alignment: .leading).padding()
    }
    private var averageCostSection:some View {
        VStack(alignment: .leading,spacing:8) {
            Text(location.averageCost)
                .foregroundColor(.secondary)
           
        }.frame(maxWidth:.infinity,alignment: .leading).padding()
    }
    private var dosSection:some View {
        VStack(alignment: .leading,spacing:8) {
            Text(location.dos)
                .foregroundColor(.secondary)
           
        }.frame(maxWidth:.infinity,alignment: .leading).padding()
    }
    private var backButton:some View{
        Button {
            vm.sheetLocation = nil
        } label: {
            
            Image(systemName: "xmark")
                .font(.headline)
                .foregroundColor(.primary)
                .padding(16)
                .background(.thickMaterial)
                .frame(width: 40,height: 40)
                .cornerRadius(20)
              
        }
        .padding(.all, 20.0)
        

    }

}
