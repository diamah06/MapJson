//
//  ContentView.swift
//  ProjetJson
//
//  Created by Mahdia Amriou on 26/09/2022.
//

import SwiftUI



struct Place: Identifiable, Decodable {
    var id: Int
    var name: String
    var lat: Double
    var lon: Double
    var address: String
    var type: String
    var url: String
    var wifi: Bool
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

var places: [Place] = load("places.json")

struct ContentView: View {
    

    
    
    var body: some View {
        
        
        NavigationView {
            
            List(places) { place in
                NavigationLink(destination: DetailView(place: place)) {
                    Text(place.name)
                        .font(.headline)
                }
            
        }
            
        }
        
        
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
