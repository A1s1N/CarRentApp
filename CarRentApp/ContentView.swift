//
//  ContentView.swift
//  CarRentApp
//
//  Created by Никита Александров on 20.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color("background").ignoresSafeArea().overlay(
            VStack {
                Image("Car")
                    .offset(x: -20, y: -120)
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
