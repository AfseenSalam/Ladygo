//
//  HomePageView.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/23/23.
//


import SwiftUI
import MapKit

struct HomePageView: View {
    @EnvironmentObject private var vm : HomePageViewModel
    var locationManager: CLLocationManager?
    var body: some View {
        ZStack{
           
            Map(coordinateRegion:$vm.mapRegion,
                annotationItems: vm.locations) { location in
                MapMarker(coordinate: location.coordinates,tint: .red)
            }.ignoresSafeArea()
            VStack{
                header.padding()
                Spacer()
                ZStack{
                    ForEach(vm.locations){
                        location in
                        
                        if vm.mapLocation == location{
                            LocationPreview(location:location)
                                .shadow(color:Color.black.opacity(0.3), radius: 20)
                        }
                    }
                }.sheet(item: $vm.sheetLocation,onDismiss: nil) { location in
                    DestinationView(location: location)
                }
            }
          
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView().environmentObject(HomePageViewModel())
    }
}
extension HomePageView{
    private var header:some View{
        VStack {
            Button(action: vm.toggleLocationList) {
                Text("\(vm.mapLocation.name) , \(vm.mapLocation.cityName)").foregroundColor(Color(.black)).bold().frame( height: 55).frame(maxWidth:.infinity).animation(.none, value: vm.mapLocation).overlay(alignment: .leading) {Image(systemName: "arrow.down.circle.fill").padding().foregroundColor(.primary).rotationEffect(Angle(degrees: vm.showLocationList ? 180: 0))
            }
            }
            if vm.showLocationList
            {
                LocationListView()
            }
            
        }.background(.thinMaterial).cornerRadius(10).shadow(radius: 10)
       
    }
}

