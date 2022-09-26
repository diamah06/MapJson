//
//  DetailView.swift
//  ProjetJson
//
//  Created by Mahdia Amriou on 26/09/2022.
//

import SwiftUI

struct DetailView: View {
    
    var place: Place
    
    var body: some View {
        
        VStack{
            Text(place.name)
                .fontWeight(.bold)
                .font(.title)
                .padding()
            Text(place.address)
                .font(.headline)
            Text(place.type)
                .font(.headline)
            Text(place.url)
                .font(.callout)
                .foregroundColor(.blue)
         
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        //        DetailView (places:
        //Place(id: 1, name: "coffe", lat: 23, lon: 25, address: "abcdefghij", type: "mlkjhgfgf", url: "abddddd", wifi: true))
        //    }
        DetailView(place: places[2])
    }
}
