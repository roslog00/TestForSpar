//
//  ViewExtensions.swift
//  TestForSpar
//
//  Created by Вероника Гера on 10.08.2023.
//

import Foundation
import SwiftUI

extension View {
    func getAdaptiveWidth(_ width: Double) -> CGFloat {
        UIScreen.main.bounds.width * (width / 375)
    }
    
    func getAdaptiveHeight(_ height: Double) -> CGFloat {
        UIScreen.main.bounds.height * (height / 812)
    }
}
