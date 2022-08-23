//
//  MapRouteView.swift
//  CarRentApp
//
//  Created by Никита Александров on 21.08.2022.
//

import MapKit
import SwiftUI

struct MapRouteView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea()
        }
    }
}

struct MapRouteView_Previews: PreviewProvider {
    static var previews: some View {
        MapRouteView()
    }
}

struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    
    func makeCoordinator() -> MapViewCoordinator {
        return MapViewCoordinator()
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.780_599, longitude: -122.291_024), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        mapView.setRegion(region, animated: true)
        
        let p1 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 37.780_046, longitude: -122.289_752))
        
        let p2 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 37.781_286, longitude: -122.291_323))
        
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: p1)
        request.destination = MKMapItem(placemark: p2)
        request.transportType = .automobile
        
        let directions = MKDirections(request: request)
        directions.calculate { response, error in
            guard let route = response?.routes.first else { return }
            mapView.addAnnotations([p1, p2])
            mapView.addOverlay(route.polyline)
            mapView.setVisibleMapRect(route.polyline.boundingMapRect, edgePadding: UIEdgeInsets(top: 40, left: 40, bottom: 40, right: 40), animated: true)
        }
        
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
    
    class MapViewCoordinator: NSObject, MKMapViewDelegate {
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            let renderer = MKPolylineRenderer(overlay: overlay)
            renderer.strokeColor = .gray
            renderer.lineWidth = 5
            return renderer
        }
    }
}
