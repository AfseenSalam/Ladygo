//
//  LocationDataService.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/27/23.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            tips:"TIPS:You won't need to know a word of Italian to enjoy your trip. However, learning a few key words and phrases will be fun, helpful, and sometimes make you a little more appreciated." ,
            averageCost:"AVERAGE COST:The price for the enterance ranges from $1000 per person ",
            dos:"DO'S:Walking tour,Cultural tour,Rome food tour"),
        Location(
            name: "Taj Mahal",
            cityName: "Agra",
            coordinates: CLLocationCoordinate2D(latitude: 27.173891, longitude: 78.042068),
            description: "The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan (reigned from 1628 to 1658), to house the tomb of his favourite wife, Mumtaz Mahal.It is the jewel of Muslim art in India and one of the universally admired masterpieces of the world's heritage.",
            imageNames: [
                "Taj1",
                "Taj2",
                "Taj3",
            ],
        tips: "TIPS:Oct to March is the best time to visit,It is closed on friday,leave the stuf which you can't take inside at home ",
        averageCost: "AVERAGE COST:It cost around $2500 for solo traveler",
            dos:"DO'S:can take day tour,visit near by fort and some historical places"),
        Location(
            name: "Tulum Archaeological Site",
            cityName: "Mexico",
            coordinates: CLLocationCoordinate2D(latitude: 20.214788, longitude: -87.430588),
            description: "Mexico is the second largest economy in Latin America. With a population of almost 130 million, a rich cultural history and diversity, and abundant natural resources Mexico is among the 15 largest economies in the world.",
            imageNames: [
                "Mexico1",
                "Mexico2"
                
            ],
            tips:"TIPS:The ruins open at 8 am and close at 5 pm, so getting here around 8 will be prime time. Plus, the earlier you get here, the fewer people will be in your photos",
            averageCost:"AVERAGE COST:Ranges between $50-$250 depending on the tour",
            dos:"DO'S:Xcaret,Akumal Beach,Zip-lining,ATV’s,Snorkeling,Coco Bongo Cancun,Mystika"),
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            tips:"TIPS:Use public transportation,Watch out for pickpockets and scams,Practice basic French phrases",
            averageCost: "AVERAGE COST:The average price of a 7-day trip to Paris is $1,450 for a solo traveler, $2,604 for a couple, and $4,882 for a family of 4. ",
            dos:"DO'S:gourmet and sightseeing tour,bus tour,museum trip,cruise tour"
        
        ),
           
        Location(
            name: "The Cloisters",
            cityName: "Naussau",
            coordinates: CLLocationCoordinate2D(latitude: 25.06464, longitude: -77.45703),
            description: "The Bahamas extends 760 miles from the coast of Florida on the north-west almost to Haiti on the south-east. The group consists of 700 islands and 2,400 cays with an area of 5,358 sq. miles (13,878 sq. km.). Thirty of the islands are inhabited.",
            imageNames: [
                "Cloisters1",
                "Cloisters2"
            ],
            tips:"TIPS:Be aware of the timings of the bank",
        averageCost: "AVERAGE COST:A vacation to the Bahamas for one week usually costs around BS$1,397 for one person. So, a trip to the Bahamas for two people costs around BS$2,794 for one week",
            dos:"DO'S:Bahamas Beach,Boat Tour,Diving and Snorkeling,Clifton Heritage National Park,Queens Staircase,Lucian National Park,Glass Window Bridge"),
        Location(
            name: "Tokyo Imperial Palace",
            cityName: "Japan",
            coordinates: CLLocationCoordinate2D(latitude: 35.685360, longitude: 139.753372),
            description: "Tokyo is the administrative, cultural, financial, commercial, and educational centre of Japan and the focus of an extensive urban complex that includes Kawasaki and Yokohama. Attractions include the Imperial Palace, encircled by stone-walled moats and broad gardens, and numerous temples and shrines.",
            imageNames: [
                "Tokyo1",
                "Tokyo2"
            ],
            tips:"TIPS:The morning commute in Tokyo can be intense : For Tokyoites, the morning commute is a contact sport. On weekdays from 7:30am to 9am, millions squeeze into trains across the city, sometimes helped along by station staff who make sure everyone’s packed in.",
        averageCost: "AVERAGE COST:The average price of a 7-day trip to Japan is $1,659 for a solo traveler, $2,690 for a couple, and $1,913 for a family of 4.",
            dos:"DO'S:Atomic Bomb Dome,Fushimi Inari Taisha,Dotomobori District,Senso-ji Temple,Nara Park,Japanese Archery Experience,Biking Tour Full Day,Ramen Cooking Class at Ramen Factory in Kyoto"),
        Location(
            name: "Kwame Nkrumah Memorial Park",
            cityName: "Ghana",
            coordinates: CLLocationCoordinate2D(latitude: 5.545210843783258, longitude: -0.20307400270921755),
            description: "Ghana, country of western Africa, situated on the coast of the Gulf of Guinea. Although relatively small in area and population, Ghana is one of the leading countries of Africa, partly because of its considerable natural wealth and partly because it was the first black African country south of the Sahara to achieve independence from colonial rule.",
            imageNames: [
                "Ghana1",
                "Ghana2"
            ],
            tips:"TIPS:Eating with your hands is a cultural practice.Soup-based meals are paired with a starch staple food like fufu or banku and eaten with your hands (remember the right-hand rule!).",
        averageCost: "AVERAGE COST: The average price of a 7-day trip to Accra is $1,852 for a solo traveler, $3,326 for a couple, and $6,236 for a family of 4.",
            dos:"DO'S:Cape Coast Castle,Kakum National Park,Kwame Nkrumah Memorial Park & Mausoleum,W.E.B. DuBois Centre in Accra,Bojo Beach,Elmina Castle,National Museum of Ghana")
            
    ]
    
}
