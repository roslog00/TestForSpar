//
//  SweethMood.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct SweethMood: View {
    var body: some View {
        VStack(alignment: .leading ,spacing: getAdaptiveWidth(16)) {
            Text("Сладкое настроение")
                .font(Font.custom("SF Pro Display", size: getAdaptiveWidth(20)).weight(.bold))
                .foregroundColor(.black)
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    moodCard(cost: "55.80", imageString: "Epica 1")
                    moodCard(cost: "55.80", imageString: "Epica 2")
                    moodCard(cost: "55.80", imageString: "Epica 3")
                    moodCard(cost: "55.80", imageString: "Epica 4")
                    moodCard(cost: "55.80", imageString: "Epica 5")
                }
            }
        }.padding(.leading, getAdaptiveWidth(20))
    }
}

#Preview {
    SweethMood()
}

extension SweethMood {
    @ViewBuilder
    func moodCard(cost: String, imageString: String) -> some View {
        VStack {
            
            Image(imageString)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                Text(cost)
                    .font(Font.custom("SF Pro Text", size: 14).weight(.bold))
                    .foregroundColor(.black)
                
                Image("costRub")
                    .font(Font.custom("SF Pro Text", size: 14).weight(.bold))
                    .foregroundColor(.black)
                
                Spacer()
                
                ZStack {
                    Image("Ellipse")
                    Image("card")
                }.frame(width: getAdaptiveWidth(34), height: getAdaptiveHeight(34))
                    .padding(.trailing, getAdaptiveWidth(5))
                
            }.padding(.horizontal, getAdaptiveWidth(10))
        }
        .frame(width: getAdaptiveWidth(128), height: getAdaptiveHeight(168))
        .background(Color.white)
        .cornerRadius(getAdaptiveWidth(16))
        .shadow(color: Color(red: 0.72, green: 0.72, blue: 0.72).opacity(0.4), radius: 4, x: 0, y: 0)
    }
}
