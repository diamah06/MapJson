//
//  MapView.swift
//  ProjetJson
//
//  Created by Mahdia Amriou on 27/09/2022.
//

import SwiftUI
import MapKit



struct MapView: View {
    
    var place: Place
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.34), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: places) { place in MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.lat, longitude: place.lon))  {
                
                NavigationLink(destination: {
                    DetailView(place: place)
                }, label: {
                    Circle()
                        .stroke(.red, lineWidth: 10)
                        .frame(width: 8, height: 8)
                })
            }
            }
            .ignoresSafeArea()
        }
    }
    
    
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView( place: places[2] )
        }
    }
}
