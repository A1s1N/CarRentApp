//
//  WelcomeView.swift
//  CarRentApp
//
//  Created by Никита Александров on 21.08.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            VStack {
                Image("Car")
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                VStack {
                    Text("Premium cars.\nEnjoy the luxury")
                        .font(Font.custom("Barlow-Bold", size: 35))
                        .foregroundColor(.white)
                            .frame(width: 350, height: 90, alignment: .topLeading)
                            
                    Text("Premium and prestige car daily rental. Experience the thrill at a lower price")
                            .font(Font.custom("Barlow-Regular", size: 15))
                            .foregroundColor(.gray)
                            .frame(width: 350, height: 40, alignment: .topLeading)
                }
                .padding(.leading)
                .offset(y: -30)
                
                Button(action: {}) {
                    Text("Let's Go")
                        .font(Font.custom("Barlow-Bold", size: 20))
                        .padding()
                        .foregroundColor(.black)
                        .frame(width: 320.0, height: 55)
                        .background(Color.white)
                        .cornerRadius(50)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
