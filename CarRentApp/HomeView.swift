//
//  HomeView.swift
//  CarRentApp
//
//  Created by Никита Александров on 20.08.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Label("Information", systemImage: "info.circle")
                Spacer()
                Label {
                    Text("Notifications")
                } icon: {
                    Image(systemName: "bell.badge")
                        .foregroundStyle(.red, .black)
                }
            }
            .font(.system(size: 16, weight: .medium))
            .frame(maxWidth: 275, alignment: .top)
            VStack(alignment: .leading) {
                Text("NEAREST CAR")
                    .tracking(3)
                    .font(.system(size: 12, weight: .ultraLight))
                    .padding(.leading)
                Image("CarSide")
                Text("Fortuner GR")
                    .font(.system(size: 20, weight: .medium))
                    .padding(.leading)
                HStack {
                    HStack {
                        Label("> 870km", image: "gps_icon")
                        Spacer()
                        Label("50L", image: "gas_pump")
                            
                    }
                    .font(.system(size: 12, weight: .ultraLight))
                    .frame(width: 130, height: 18, alignment: .leading)
                    Spacer()
                    Text("$45,00/h")
                        .font(.system(size: 14, weight: .bold))
                }
                .frame(width: 275, alignment: .center)
                .padding(.leading)
            }
            .frame(width: 320.0, height: 235)
            .background(Color(red: 243 / 255, green: 243 / 255, blue: 243 / 255))
            .cornerRadius(20)
            .padding()
            HStack {
                VStack {
                    Image("user")
                    Text("Jane Cooper")
                        .font(.system(size: 16))
                    Text("$ 4,253")
                        .font(.system(size: 14, weight: .heavy))
                        .padding(.top, 2)
                }
                .frame(width: 150.0, height: 170)
                .background(Color(red: 243 / 255, green: 243 / 255, blue: 243 / 255))
                .cornerRadius(20)
                //.padding()
                Spacer()
                VStack {
                    Image("map")
                }
                .frame(width: 150.0, height: 170)
                .background(Color(red: 243 / 255, green: 243 / 255, blue: 243 / 255))
                .cornerRadius(20)
                //.padding()
            }
            .frame(width: 320, alignment: .center)
            VStack {
                HStack {
                    Text("More Cars")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 212 / 255, green: 212 / 255, blue: 212 / 255))
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                        .font(.system(size: 24))
                        .padding(.trailing, 5)
                }
                .padding([.leading, .bottom, .trailing], 25)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Corolla Cross")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .heavy))
                        HStack {
                            Label("> 4km", image: "gps_icon_gray")
                            Spacer()
                            Label("50L", image: "gas_pump_gray")
                        }
                        .font(.system(size: 12, weight: .light))
                        .frame(width: 128, height: 18, alignment: .leading)
                        .foregroundColor(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                        
                    }
                    Spacer()
                    Image(systemName: "arrow.right.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 32))
                                
                }
                .padding(.horizontal, 25)
                Divider()
                    .frame(width: 270, height: 2)
                    .overlay(Color(red: 75 / 255, green: 75 / 255, blue: 75 / 255))

                HStack {
                    VStack(alignment: .leading) {
                        Text("Ionic 5")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .heavy))
                        HStack {
                            Label("> 8km", image: "gps_icon_gray")
                            Spacer()
                            Label("80%", image: "battery_low")
                                
                        }
                        .font(.system(size: 12, weight: .light))
                        .frame(width: 138, height: 18, alignment: .leading)
                        .foregroundColor(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                        
                    }
                    Spacer()
                    Image(systemName: "arrow.right.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 32))
                        
                }
                .padding(.horizontal, 25)
            }
            .frame(width: 320.0, height: 220)
            .background(Color(red: 40 / 255, green: 41 / 255, blue: 49 / 255))
            .cornerRadius(20)
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
