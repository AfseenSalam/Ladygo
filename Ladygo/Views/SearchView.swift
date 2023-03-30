//
//  SearchView.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/28/23.
//

import SwiftUI

struct SearchView: View {
    private var listOfCountry = countryList
        @State var searchText = ""
    var body: some View {
       ZStack {
            Color("Background").ignoresSafeArea()
           NavigationView{
               List {
                   ForEach(countries, id: \.self) { country in
                       HStack {
                           Text(country.capitalized)
                           Spacer()
                           Image(systemName: "globe.americas.fill")
                               .foregroundColor(Color.green.opacity(0.8))
                       }
                       .padding()
                       .listRowBackground(Color("Background"))
                   }
               }
               .searchable(text: $searchText)
               .navigationTitle("Explore")
               .background(Color("Background"))
               .scrollContentBackground(.hidden)
           }
       }
   }
       // Filter countries
       var countries: [String] {
           // Make countries lowercased
           let lcCountries = listOfCountry.map { $0.lowercased() }
           
           return searchText == "" ? lcCountries : lcCountries.filter { $0.contains(searchText.lowercased()) }
       }
   }
            
       

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
