//
//  DetailsView.swift
//  CarRentApp
//
//  Created by Никита Александров on 22.08.2022.
//

import SwiftUI
import MapKit

struct DetailsView: View {
    var body: some View {
        VStack {
            ZStack {
            MapRouteView()
                HStack() {
                    Image("arrow-left")
                    Spacer()
                    Image("settings")
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 300)
            }
            PopupView()
            .offset(y: -35)
        }
    }
}
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}


