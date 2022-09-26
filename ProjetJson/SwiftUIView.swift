//
//  SwiftUIView.swift
//  ProjetJson
//
//  Created by Mahdia Amriou on 27/09/2022.
//

import SwiftUI

import SwiftUI
import MapKit



    struct  SwiftUIView: View {
        @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8731907, longitude: 2.3631488), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))

        var body: some View {
            NavigationView {
               
                VStack {
                    Map(coordinateRegion: $region)
                    
                    
                }
            }
        }
    }

    

        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
