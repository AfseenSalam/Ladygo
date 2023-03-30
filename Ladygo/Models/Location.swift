//
//  Location.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/27/23.
//

import Foundation
import MapKit

struct Location:Identifiable,Equatable{

    let name :String
    let cityName : String
    let coordinates: CLLocationCoordinate2D
    let description:String
    let imageNames:[String]
    let tips: String
    let averageCost : String
    let dos : String
    
    var id:String{
       name+cityName
    }
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}


