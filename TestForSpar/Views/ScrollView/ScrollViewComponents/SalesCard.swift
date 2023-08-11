//
//  SalesCard.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct SalesCard: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: getAdaptiveWidth(20)) {
                Image("Wine")
                    .resizable()
                    .frame(width: getAdaptiveWidth(304), height: getAdaptiveHeight(154))
                    .cornerRadius(15)
                Image("CatsFood")
                    .resizable()
                    .frame(width: getAdaptiveWidth(304), height: getAdaptiveHeight(154))
                    .cornerRadius(15)
                Image("Food")
                    .resizable()
                    .frame(width: getAdaptiveWidth(304), height: getAdaptiveHeight(154))
                    .cornerRadius(15)
            }
        }.padding(.leading, getAdaptiveWidth(10))
    }
}

#Preview {
    SalesCard()
}
