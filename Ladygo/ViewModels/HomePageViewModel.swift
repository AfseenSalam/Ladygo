//
//  HomePageViewModel.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/27/23.
//

import Foundation
import MapKit
import SwiftUI
class HomePageViewModel:ObservableObject{
    @Published var locations:[Location]//all loaded location
   //current Location on the map
    @Published var mapLocation : Location{
        didSet{
            updateMapRegion(location: mapLocation)
        }
    }
    //current region on map
    @Published var mapRegion : MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    //show list
    @Published var showLocationList:Bool = false
    //Show sheetlocation
    @Published var sheetLocation:Location? = nil
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    func updateMapRegion(location:Location){
        withAnimation(.easeInOut){
            mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
        }
    }
    func toggleLocationList(){
        withAnimation(.easeInOut){
            showLocationList = !showLocationList
        }
    }
    func showNextLocation(location:Location){
        withAnimation(.easeInOut){
            mapLocation = location
            showLocationList = false
        }
    }
}
