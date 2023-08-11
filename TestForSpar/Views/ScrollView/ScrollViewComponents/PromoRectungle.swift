//
//  PromoRectungle.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct PromoRectungle: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                promoRectungle(text: "Готовая еда со скидкой", imageString: "ReadyFood", color: 0xFFE3F4)
                promoRectungle(text: "Cвежее мясо", imageString: "Meet", color: 0x80F0E8)
                promoRectungle(text: "Турецкий кофе", imageString: "Cofe", color: 0xCBF4FF)
                promoRectungle(text: "Скидки на аэрозоли", imageString: "Aero", color: 0xCBF4E5)
            }
        }.padding(.leading, getAdaptiveWidth(20))
    }
}

#Preview {
    PromoRectungle()
}

extension PromoRectungle {
    @ViewBuilder
    func promoRectungle(text: String, imageString: String, color: Int) -> some View {
        VStack {
            HStack(alignment: .top) {
                Text(text)
                    .font(.system(size: getAdaptiveWidth(15), weight: .semibold))
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                Spacer()
            }
            
            Spacer()
            
            Image(imageString)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
        }
        .padding(.vertical)
        .frame(width: 140, height: 170)
        .background(Color(UIColor(hex: color)))
        .cornerRadius(10)
    }
}
