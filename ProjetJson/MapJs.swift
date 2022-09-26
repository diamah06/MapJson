//
//  MapJs.swift
//  ProjetJson
//
//  Created by Mahdia Amriou on 26/09/2022.
//

import SwiftUI
import MapKit

struct MapJs: View {
    
    @State private var region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(
                        latitude: 43.304636927959564,
                        longitude: 5.366997169757735),
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.03,
                        longitudeDelta: 0.03)
                    )
    private  var places: Place
    
    var body: some View {
        ZStack
        {
            Map(coordinateRegion: $region, annotationItems: places) { place in
                        MapAnnotation(coordinate: place.coordinate) {
                            
                            
                            NavigationLink {
                                //On change la destination ici vers l'écran de Marlene
                                Itineraire()
                            } label: {
                                //image
                                Image(systemName: "mappin.and.ellipse")
                                    .font(.largeTitle)
                                    .foregroundColor(.red)
                            }
                            //Image(systemName: "mappin.and.ellipse")
                              //  .font(.largeTitle)
                              //  .foregroundColor(.red)
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
            ButtonsView()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct MapJs_Previews: PreviewProvider {
    static var previews: some View {
        MapJs()
    }
}
