//
//  ContentView.swift
//  CarRentApp
//
//  Created by Никита Александров on 20.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            Image("Car")
                .offset(x: -20, y: -100)
            VStack {
                VStack(alignment: .leading) {
                    Text("Premium cars. Enjoy the luxury")
                        .font(.system(size: 35, weight: .heavy))
                        .foregroundColor(.white)
                        .frame(width: 300)
                        .offset(x: -30, y: 150)
                        .padding()
                        .padding(.top, 60)
                    
                    Text("Premium and prestige car daily rental. Experience the thrill at a lower price")
                        .font(.system(size: 15, weight: .light))
                        .foregroundColor(.gray)
                        .offset(x: 0, y: 140)
                }
                Button(action: {}) {
                    Text("Let's Go")
                        .font(.system(size: 20, weight: .heavy))
                        .padding()
                        .foregroundColor(.black)
                        .frame(width: 320.0, height: 55)
                        .background(Color.white)
                        .cornerRadius(50)
                }
                .offset(x: 0, y: 200)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
