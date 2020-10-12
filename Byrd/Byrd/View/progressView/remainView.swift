//
//  remainView.swift
//  Byrd
//
//  Created by Fernando de Lucas on 06/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import Foundation
import UIKit

class remainView : UIView {
    
    let remainOne : UILabel = {
        let remain = UILabel()
        remain.textAlignment = .center
        remain.text = "Remain Carb"
        remain.font = sfRounded(size: 10)
        remain.frame = CGRect(origin: CGPoint(x:8, y:518), size: CGSize(width: 120, height: 14))
    return remain
    }()
    
    let data : UILabel = {
        let remain = UILabel()
            remain.textAlignment = .center
            remain.text = "200"
            remain.font = sfRounded(size: 12)
            remain.frame = CGRect(origin: CGPoint(x:8, y:535), size: CGSize(width: 120, height: 14))
        return remain
    }()
       override init(frame: CGRect) {
             super.init(frame: frame)
             setupView()
         }
         
         required init?(coder: NSCoder) {
             super.init(coder: coder)
             setupView()
         }
    
    func setupView(){
        addSubview(remainOne)
        addSubview(data)
    }
}
