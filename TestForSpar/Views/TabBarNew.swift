//
//  TabBarNew.swift
//  TestForSpar
//
//  Created by Вероника Гера on 11.08.2023.
//

import SwiftUI

struct TabBarNew: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image("Vector 2")
                        .frame(width: getAdaptiveWidth(22), height: getAdaptiveHeight(22))
                    
                    Text("Главная")
                        .font( Font.custom("SF Pro Text", size: 10).weight(.medium))
                }
            
            Text("каталог")
                .tabItem {
                    Image("Frame 29")
                        .frame(width: getAdaptiveWidth(24), height: getAdaptiveHeight(24))
                    
                    Text("Каталог")
                        .font(Font.custom("SF Pro Text", size: 10).weight(.medium))
                }
            
            Text("корзина")
                .tabItem {
                    Image("Frame 31")
                        .frame(width: getAdaptiveWidth(24), height: getAdaptiveHeight(24))
                    
                    Text("Корзина")
                        .font(Font.custom("SF Pro Text", size: 10).weight(.medium))
                }
            
            Text("профиль")
                .tabItem {
                    Image("Frame 32")
                        .frame(width: getAdaptiveWidth(24), height: getAdaptiveHeight(24))
                    
                    Text("Профиль")
                        .font(Font.custom("SF Pro Text", size: 10).weight(.medium))
                }
            
        }.accentColor(UIColor.sparColor)
            .onAppear{
                UITabBar.appearance().barTintColor = UIColor(white: 255, alpha: 0.75)
            }
    }
}



#Preview {
    TabBarNew()
}
