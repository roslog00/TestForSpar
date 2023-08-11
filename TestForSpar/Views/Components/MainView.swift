//
//  ContentView.swift
//  TestForSpar
//
//  Created by Вероника Гера on 10.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            ScrolViewMain()
            
            NavBar()
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
