//
//  ColorManager.swift
//  TemperatureGo
//
//  Created by Joel Sereno on 10/18/21.
//

import Foundation
import SwiftUI

struct ColorManager {
    
    //dutch colors palette from flatuicolors.com
    static let custom_purple = Color ("circumorbital_ring")
    static let custom_blue   = Color("merchant_marine_blue")
    static let custom_green  = Color("pixelated_grass")
    static let custom_yellow = Color("sunflower")
    
    static let LinearGradiant_green_yellow = LinearGradient(gradient:
                    Gradient(colors:[Color("custom_green"), Color("custom_yellow")]),
                    startPoint: .leading,
                    endPoint: .trailing)
}
