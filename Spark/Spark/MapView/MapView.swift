//
//  MapView.swift
//  Spark
//
//  Created by Torgeir Eikeland on 28/10/2021.
//

import SwiftUI
import MapKit


struct MapView: View{
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 59.9, longitude: 10.757933), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 59.91733174570447, longitude: 10.727785514190508))
    ]
    
    var body: some View {
        VStack{
            LogoView(page: Page.Map)
            
            Map(coordinateRegion: $region,
                annotationItems: annotationItems) {item in
                MapPin(coordinate: item.coordinate)
            }
            
            Spacer()
        }.navigationBarHidden(true)
    }
}

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}
