//
//  ScrollView.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct MainScreenScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                historyHorizontalScrollView(imageName: "history 1", text: "Привилегии «Мой SPAR")
                historyHorizontalScrollView(imageName: "history 2", text: "Мы в соцсетях")
                historyHorizontalScrollView(imageName: "history 3", text: "3 рецепта коктейлей")
                historyHorizontalScrollView(imageName: "history 4", text: "Дегустации в SPAR")
                historyHorizontalScrollView(imageName: "history 5", text: "Новинки недели")
            }
        }.padding(.leading, getAdaptiveWidth(10))
    }
}

#Preview {
    MainScreenScrollView()
}


extension MainScreenScrollView {
    @ViewBuilder
    func historyHorizontalScrollView(imageName: String, text: String) -> some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .overlay(Circle().stroke(Color.green, lineWidth: 2))
                .frame(width: 64, height: 64)
            
            Text(text)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
        }
        .frame(width: 98)
    }
}
