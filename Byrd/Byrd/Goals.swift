//
//  Goals.swift
//  Byrd
//
//  Created by Vitor Bryan on 30/04/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import Foundation
import UIKit

class GoalsList{
    var icon: UIImage
    var title: String
    var id: Int
    
    init(icon: UIImage, title: String, id: Int){
        self.icon = icon
        self.title = title
        self.id = id
    }
}

class OptionsList {
    var title: String
    var content: [String]?
    var id: Int?
    
    init(title: String, content: [String], id: Int){
        self.title = title
        self.content = content
        self.id = id
    }
    
    init(title: String, id: Int) {
        self.title = title
        self.id = id
    }
}
