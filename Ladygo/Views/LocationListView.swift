//
//  LocationListView.swift
//  LadyGoMy
//
//  Created by Afseen Salam on 3/27/23.
//

import SwiftUI

struct LocationListView: View {
    @EnvironmentObject private var vm : HomePageViewModel
    var body: some View{
        List{
            ForEach(vm.locations) {
                location in
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                } .padding(.vertical,4).listRowBackground(Color.clear)
            }.listStyle(PlainListStyle())
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView().environmentObject(HomePageViewModel())
    }
}
extension LocationListView{
    private func listRowView(location:Location)->some View{
        HStack{
            if let imageName = location.imageNames.first{
                Image(imageName).resizable()
                    .frame(width: 45, height: 45)
            }
            VStack(alignment:.leading){
                Text(location.name).font(.headline)
                Text(location.cityName).font(.subheadline
                )
            }.frame(maxWidth:.infinity,alignment: .leading).foregroundColor(.black)
                .cornerRadius(5)
        }
    }
}

