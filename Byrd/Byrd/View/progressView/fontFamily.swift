//
//  fontFamily.swift
//  Byrd
//
//  Created by Fernando de Lucas on 04/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import Foundation
import UIKit

func sfRounded(size: CGFloat) -> UIFont{
    
    let systemFont = UIFont.systemFont(ofSize: size)
    let descriptor = systemFont.fontDescriptor.withDesign(.rounded)
    
    let roundedFont = UIFont(descriptor: descriptor!, size: size)
    
    return roundedFont
}
