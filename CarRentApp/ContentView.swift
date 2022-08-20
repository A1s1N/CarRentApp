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
            VStack {
                Image("Car")
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                VStack {
                    Text("Premium cars.\nEnjoy the luxury")
                            .font(.system(size: 35, weight: .heavy))
                            .foregroundColor(.white)
                            .frame(width: 350, height: 90, alignment: .topLeading)
                            
                    Text("Premium and prestige car daily rental. Experience the thrill at a lower price")
                            .font(.system(size: 15, weight: .light))
                            .foregroundColor(.gray)
                            .frame(width: 350, height: 40, alignment: .topLeading)
                }
                .offset(y: -30)
                Button(action: {}) {
                    Text("Let's Go")
                        .font(.system(size: 20, weight: .heavy))
                        .padding()
                        .foregroundColor(.black)
                        .frame(width: 320.0, height: 55)
                        .background(Color.white)
                        .cornerRadius(50)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
