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
                .frame(width: 375, height: 494, alignment: .top)
                .ignoresSafeArea()
                
        }
    }
}

struct MapRouteView_Previews: PreviewProvider {
    static var previews: some View {
        MapRouteView()
            .previewLayout(.sizeThatFits)
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
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 54.198_820, longitude: 37.611_694), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
        mapView.setRegion(region, animated: true)
        
        let p1 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 54.197_249, longitude: 37.611_939))
        
        let p2 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 54.199_569, longitude: 37.612_961))
        
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: p1)
        request.destination = MKMapItem(placemark: p2)
        request.transportType = .automobile
        
        let directions = MKDirections(request: request)
        directions.calculate { response, error in
            guard let route = response?.routes.first else { return }
            mapView.addAnnotations([p1, p2])
            mapView.addOverlay(route.polyline)
            mapView.setVisibleMapRect(route.polyline.boundingMapRect, edgePadding: UIEdgeInsets(top: 50, left: 50, bottom: 50, right: 50), animated: true)
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
