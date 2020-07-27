//
//  MapView.swift
//  My Landmarks
//
//  Created by  Aleksandr on 23.07.2020.
//  Copyright © 2020  Aleksandr. All rights reserved.
//

import SwiftUI
import MapKit

class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String?,
         subtitle: String?,
         coordinate: CLLocationCoordinate2D){
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}

struct MapView: UIViewRepresentable {
    var landmark: Landmark
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
        let region = MKCoordinateRegion(center: landmark.locationCoordinate, span: span)
        uiView.setRegion(region, animated: true)
        uiView.addAnnotation(LandmarkAnnotation(title: landmark.name, subtitle: landmark.park, coordinate: landmark.locationCoordinate))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(landmark: landmarkData[2])
    }
}
