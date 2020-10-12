//
//  colors.swift
//  Byrd
//
//  Created by Fernando de Lucas on 04/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit
extension UIColor {
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static let waterBlue = UIColor.rgb(r: 82, g: 195 , b: 255)
    static let greenFood = UIColor.rgb(r: 28, g:189, b: 103)
    static let orangeSteps = UIColor.rgb(r: 250, g:173, b: 83)
    static let redBlaze = UIColor.rgb(r: 237, g: 85, b: 85)
    static let purpleSleep = UIColor.rgb(r: 176, g: 122, b: 235)
    static let blueStand = UIColor.rgb(r: 110, g: 140, b: 239)
    static let redByrd = UIColor.rgb(r:248, g: 95, b: 113)
    static let greyDesc = UIColor.rgb(r:112, g: 112, b: 112)
}
