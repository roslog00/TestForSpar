//
//  NavBar.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        ZStack{
            HStack(alignment: .bottom, spacing: 11) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: getAdaptiveWidth(299), height: getAdaptiveHeight(32))
                        .cornerRadius(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: getAdaptiveWidth(30))
                                .stroke(Color(red: 0.78, green: 0.78, blue: 0.78), lineWidth: 1.5)
                        )
                    
                    HStack{
                        Image("map-pin")
                            .frame(width: getAdaptiveWidth(16), height: getAdaptiveHeight(16))
                            .padding(.leading, getAdaptiveWidth(7))
                        
                        
                        Text("Москва, Москва и Московская область")
                            .font(Font.custom("SF Pro Text", size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                    }.frame(width: getAdaptiveWidth(299), height: getAdaptiveHeight(32), alignment: .leading)
                        
                }
                
                Image("icon")
                    .frame(width: getAdaptiveWidth(17), height: getAdaptiveHeight(10))
                    .padding(.bottom, getAdaptiveHeight(11))
                
            }
            .padding(.leading, getAdaptiveWidth(25))
            .padding(.trailing, getAdaptiveWidth(23))
            .padding(.bottom, getAdaptiveHeight(4))
            .padding(.top, getAdaptiveHeight(52))
            .background(Color.white.opacity(0.75))
            .shadow(color: .black.opacity(0.3), radius: 0, x: 0, y: 0.33)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .ignoresSafeArea(.all)
    }
}

#Preview {
    NavBar()
}
