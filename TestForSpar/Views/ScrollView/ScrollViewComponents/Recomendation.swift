//
//  Recomendation.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct Recomendation: View {
    var body: some View {
        VStack(alignment: .leading ,spacing: getAdaptiveWidth(16)) {
            Text("Рекомендуем")
              .font(Font.custom("SF Pro Display", size: getAdaptiveWidth(20)).weight(.bold))
              .foregroundColor(.black)
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    recomendationCard(cost: "300", imageString: "Pizza")
                    recomendationCard(cost: "270", imageString: "Chees")
                    recomendationCard(cost: "90", imageString: "Levushka")
                    recomendationCard(cost: "290", imageString: "Sausage")
                }
            }
        }.padding(.leading, getAdaptiveWidth(20))
    }
}

#Preview {
    Recomendation()
}

extension Recomendation {
    @ViewBuilder
    func recomendationCard(cost: String, imageString: String) -> some View {
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
