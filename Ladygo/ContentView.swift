//
//  ContentView.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isUserCurrentlyLoggedOut: Bool = false
    @StateObject private var vm = HomePageViewModel()
    var body: some View {
      
      
        
       NavigationView{
            if isUserCurrentlyLoggedOut {
                VStack {
        TabView {
           HomePageView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Explore")
                }
            SavedTripView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Saved Trips")
                }
           SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
           ReviewPageView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Review")
                }
          AccountPageView(isUserCurrentlyLoggedOut : $isUserCurrentlyLoggedOut)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }.background(Color("Green"))
    }
          }else{
             LoginView(isUserCurrentlyLoggedOut : $isUserCurrentlyLoggedOut)          }
       }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(HomePageViewModel())
      
           
        
    }
}
