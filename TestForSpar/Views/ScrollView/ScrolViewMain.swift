//
//  ScrolViewMain.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct ScrolViewMain: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: getAdaptiveWidth(25)) {
                MainScreenScrollView()
                    .padding(.top, getAdaptiveHeight(30))
                
                SalesCard()
                
                BonusCard()
                
                PromoRectungle()
                
                Recomendation()
                
                SweethMood()
                    .padding(.bottom, getAdaptiveHeight(20))
            }
        }.padding(.top, getAdaptiveHeight(10))
            
    }
}

#Preview {
    ScrolViewMain()
}
