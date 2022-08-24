//
//  PopupView.swift
//  CarRentApp
//
//  Created by Никита Александров on 23.08.2022.
//

import SwiftUI

struct PopupView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Fortuner GR")
                        .foregroundColor(.white)
                        .font(Font.custom("Barlow-SemiBold", size: 24))
                    HStack {
                        Label("> 870km", image: "gps_icon_gray")
                        Spacer()
                        Label("50L", image: "gas_pump_gray")
                    }
                    .font(Font.custom("Barlow-Regular", size: 12))
                    .frame(width: 128, height: 18, alignment: .leading)
                    .foregroundColor(Color(
                        red: 219 / 255,
                        green: 219 / 255,
                        blue: 219 / 255
                    ))
                }
                .padding(.top, 20)
                .padding(.leading, 20)
                Spacer()
                ZStack {
                    Image("car_front")
                        .frame(width: 200)
                        .offset(x: -10, y: 60)
                    Button(action: {}, label: {
                        Image("close_icon")
                            .offset(x: 75, y: -20)
                    })
                }
            }
            .zIndex(1)
            .padding(.horizontal, 10)
            Spacer()
            VStack(alignment: .leading) {
                Text("Features")
                    .font(Font.custom("Barlow-Bold", size: 20))
                    .foregroundColor(Color(
                        red: 41 / 255,
                        green: 45 / 255,
                        blue: 50 / 255
                    ))
                    .frame(alignment: .leading)
                    .padding(.horizontal, 30)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        VStack(alignment: .leading) {
                            Image("gas_pump_black")
                            Text("Diesel")
                                .font(Font.custom("Barlow-Bold", size: 14))
                                .foregroundColor(Color(red: 41 / 255, green: 45 / 255, blue: 50 / 255))
                            Text("Common Rail Fuel Injection")
                                .font(.system(size: 8, weight: .light))
                                .foregroundColor(Color(red: 137 / 255, green: 138 / 255, blue: 141 / 255))
                                .frame(width: 107, alignment: .leading)
                        }
                        .frame(width: 135, height: 90)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .strokeBorder(.gray, lineWidth: 0.2))
                        .padding(.leading, 25)
                        .padding(.horizontal, 4)
                        
                        VStack(alignment: .leading) {
                            Image("acceleration_icon")
                            Text("Acceleration")
                                .font(Font.custom("Barlow-Bold", size: 14))
                                .foregroundColor(Color(red: 41 / 255, green: 45 / 255, blue: 50 / 255))
                            Text("0 - 100km / 11s")
                                .font(.system(size: 8, weight: .light))
                                .foregroundColor(Color(red: 137 / 255, green: 138 / 255, blue: 141 / 255))
                                .frame(width: 107, alignment: .leading)
                        }
                        .frame(width: 135, height: 90)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .strokeBorder(.gray, lineWidth: 0.2))
                        .padding(.horizontal, 4)
                        
                        VStack(alignment: .leading) {
                            Image("cool_seat_icon")
                            Text("Cool Seat")
                                .font(Font.custom("Barlow-Bold", size: 14))
                                .foregroundColor(Color(red: 41 / 255, green: 45 / 255, blue: 50 / 255))
                            Text("Temp Control on seat")
                                .font(.system(size: 8, weight: .light))
                                .foregroundColor(Color(red: 137 / 255, green: 138 / 255, blue: 141 / 255))
                                .frame(width: 107, alignment: .leading)
                        
                        }
                        .frame(width: 135, height: 90)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .strokeBorder(.gray, lineWidth: 0.2))
                        .padding(.trailing, 25)
                        .padding(.horizontal, 4)
                    }
                }
                HStack {
                    HStack {
                        Text("$")
                            .font(Font.custom("Barlow-Regular", size: 33.71))
                        + Text("45")
                            .font(Font.custom("Barlow-Bold", size: 33.71))
                        + Text(",00")
                            .font(Font.custom("Barlow-Regular", size: 33.71))
                        + Text("/day")
                            .font(Font.custom("Barlow-Regular", size: 14.98))
                    }
                    .foregroundColor(Color(red: 41 / 255, green: 45 / 255, blue: 50 / 255))
                    Spacer()
                    Button(action: {}, label: {
                        Text("Book Now")
                            .font(Font.custom("Barlow-SemiBold", size: 16))
                    })
                        .foregroundColor(.white)
                        .frame(width: 147, height: 54)
                        .background(Color(.black))
                        .cornerRadius(50)
                }
                .padding(.horizontal, 30)
                .padding(.top, 20)
                .padding(.bottom, 30)
            }
            .frame(height: 277)
            .background(
                Color(.white),
                in: RoundedCornersShape(corners: [.topLeft, .topRight], radius: 40))
        }
            .frame(width: 375, height: 375)
            .background(
                Color("background"),
                in: RoundedCornersShape(corners: [.topLeft, .topRight], radius: 40))
    }
}
        
struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
            .previewLayout(.sizeThatFits)
    }
}

struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
