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
                Label {
                    Text("Information")
                } icon: {
                    Image("info_icon")
                }
                Spacer()
                Label {
                    Text("Notifications")
                } icon: {
                    Image("bell_icon")
                        .foregroundStyle(.red, .black)
                }
            }
            .font(Font.custom("Barlow-SemiBold", size: 16))
            .frame(maxWidth: 275, alignment: .top)
            VStack(alignment: .leading) {
                Text("NEAREST CAR")
                    .tracking(2)
                    .font(Font.custom("Barlow-Regular", size: 12))
                    .foregroundColor(Color(red: 120 / 255, green: 120 / 255, blue: 120 / 255))
                    .padding(.leading)
                Image("CarSide")
                Text("Fortuner GR")
                    .font(Font.custom("Barlow-SemiBold", size: 20))
                    .padding(.leading)
                HStack {
                    HStack {
                        Label("> 870km", image: "gps_icon")
                        Spacer()
                        Label("50L", image: "gas_pump")
                            
                    }
                    .font(Font.custom("Barlow-Regular", size: 12))
                    .frame(width: 130, height: 18, alignment: .leading)
                    .foregroundColor(Color(red: 120 / 255, green: 120 / 255, blue: 120 / 255))
                    Spacer()
                    Text("$45,00/h")
                        .font(Font.custom("Barlow-SemiBold", size: 14))
                }
                .frame(width: 275)
                .padding(.leading)
            }
            .frame(width: 320.0, height: 235)
            .background(Color(red: 243 / 255, green: 243 / 255, blue: 243 / 255))
            .cornerRadius(20)
            .padding()
            HStack {
                VStack(alignment: .center) {
                    Image("user")
                        //.padding(.top, 10)
                    Text("Jane Cooper")
                        .font(Font.custom("Barlow-Medium", size: 16))
                        .padding(.top, 5)
                        .padding(.bottom, 0.1)
                    Text("$ 4,253")
                        .font(Font.custom("Barlow-Bold", size: 14))
                }
                .frame(width: 150.0, height: 170)
                .background(Color(red: 243 / 255, green: 243 / 255, blue: 243 / 255))
                .cornerRadius(20)
                //.padding()
                Spacer()
                VStack {
                    MapView()
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
                        .padding(.trailing, 7)
                }
                .padding(.horizontal, 25)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Corolla Cross")
                            .foregroundColor(.white)
                            .font(Font.custom("Barlow-Bold", size: 20))
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
                .padding(.top, 10)
                Divider()
                    .frame(width: 270, height: 2)
                    .overlay(Color(red: 75 / 255, green: 75 / 255, blue: 75 / 255))
                    .padding(5)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Ionic 5")
                            .foregroundColor(.white)
                            .font(Font.custom("Barlow-Bold", size: 20))
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
