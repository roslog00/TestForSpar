//
//  BonusCard.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct BonusCard: View {
    var body: some View {
        Image("bonusCard")
            .resizable()
            .frame(width: getAdaptiveWidth(340), height: getAdaptiveHeight(110))
            .cornerRadius(15)
    }
}

#Preview {
    BonusCard()
}
