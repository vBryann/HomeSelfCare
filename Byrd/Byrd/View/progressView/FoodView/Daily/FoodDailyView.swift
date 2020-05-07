//
//  FoodDailyView.swift
//  Byrd
//
//  Created by Fernando de Lucas on 05/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import Foundation
import UIKit

class FoodView : UIView {
    
    let iconImageView : UIImageView = {
        var icon = UIImageView()
        icon = UIImageView(image: #imageLiteral(resourceName: "Group 89"))
        icon.frame = CGRect(origin: CGPoint(x: 155, y: 90), size: CGSize(width: 64, height: 80))
        return icon
    }()
    
    let proteinCard : CardView = {
        
           let card = CardView()
           // título
           card.title.frame = CGRect(origin: CGPoint(x: 50, y: 311 ), size: CGSize(width: 37, height: 14))
           card.title.text = "Protein"
        card.title.textAlignment = .center
           // circulo
           card.blankCircle.position = CGPoint(x: 69, y: 378)
        card.blankCircle.path = UIBezierPath(arcCenter: .zero, radius: 49, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
        card.blankCircle.shadowPath = UIBezierPath(arcCenter: .zero, radius: 49, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
        
           //progress
           card.progressCircle.position = CGPoint(x: 69, y: 378)
           card.progressCircle.fillColor = UIColor.clear.cgColor
           card.progressCircle.lineWidth = 11
           card.progressCircle.strokeColor = UIColor.greenFood.cgColor
        card.progressCircle.path = UIBezierPath(arcCenter: .zero, radius: 41, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
           
           //describe
           card.describe.text = """
           27/55 g
           """
           card.describe.frame = CGRect (origin: CGPoint(x: 44, y: 367 ), size: CGSize(width: 49, height: 22))
           card.describe.numberOfLines = 2
           //card animation
        card.animatedCircle.toValue = 0.5
           card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
           return card
       }()
    
    
    let carbCard : CardView = {
     
        let card = CardView()
        // título
        card.title.frame = CGRect(origin: CGPoint(x: 172, y: 311 ), size: CGSize(width: 37, height: 14))
        card.title.text = "Carbs"
     card.title.textAlignment = .left
        // circulo
        card.blankCircle.position = CGPoint(x: 187, y: 378)
     card.blankCircle.path = UIBezierPath(arcCenter: .zero, radius: 49, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
     card.blankCircle.shadowPath = UIBezierPath(arcCenter: .zero, radius: 49, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
     
        //progress
        card.progressCircle.position = CGPoint(x: 187, y: 378)
        card.progressCircle.fillColor = UIColor.clear.cgColor
        card.progressCircle.lineWidth = 11
        card.progressCircle.strokeColor = UIColor.greenFood.cgColor
     card.progressCircle.path = UIBezierPath(arcCenter: .zero, radius: 41, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
        
        //describe
        card.describe.text = """
        80/150 g
        """
        card.describe.frame = CGRect (origin: CGPoint(x: 163, y: 367 ), size: CGSize(width: 49, height: 22))
        card.describe.numberOfLines = 2
        //card animation
     card.animatedCircle.toValue = 0.53
        card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
        return card
    }()
    
    let fatCard : CardView = {
     
        let card = CardView()
        // título
        card.title.frame = CGRect(origin: CGPoint(x: 297, y: 311 ), size: CGSize(width: 37, height: 14))
        card.title.text = "Fats"
     card.title.textAlignment = .left
        // circulo
        card.blankCircle.position = CGPoint(x: 307, y: 378)
     card.blankCircle.path = UIBezierPath(arcCenter: .zero, radius: 49, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
     card.blankCircle.shadowPath = UIBezierPath(arcCenter: .zero, radius: 49, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
     
        //progress
        card.progressCircle.position = CGPoint(x: 307, y: 378)
        card.progressCircle.fillColor = UIColor.clear.cgColor
        card.progressCircle.lineWidth = 11
        card.progressCircle.strokeColor = UIColor.greenFood.cgColor
     card.progressCircle.path = UIBezierPath(arcCenter: .zero, radius: 41, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).cgPath
        
        //describe
        card.describe.text = """
        6/22g
        """
        card.describe.frame = CGRect (origin: CGPoint(x: 280, y: 367 ), size: CGSize(width: 49, height: 22))
        card.describe.numberOfLines = 2
        //card animation
     card.animatedCircle.toValue = 0.27
        card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
        return card
    }()
    
    let dateLabel : UILabel = {
   let  dateLabel = UILabel ()
        dateLabel.textColor = .greyDesc
    dateLabel.text = "13 de October de 2020 - 19 de October de 2020"
        dateLabel.frame = CGRect(origin: CGPoint(x: 9, y: 249), size: CGSize(width: 358, height: 15))
        dateLabel.font = sfRounded(size: 13)
        dateLabel.textAlignment = .center
    return dateLabel
    }()
    
    let remainCalories: remainView = {
        let card = remainView()
        card.remainOne.text = "Remain Calories"
        card.data.text = "800"
        return card
    }()
    
    let remainProtein : remainView = {
        let card = remainView()
        card.remainOne.text = "Remain Protein"
        card.remainOne.frame = CGRect(origin: CGPoint(x: 128, y: 518), size: CGSize(width: 120, height: 14))
        card.data.text = "28"
        card.data.frame.origin.x = 128
        return card
    }()
    
    
    let remainCarb : remainView = {
        let card = remainView()
        card.remainOne.frame = CGRect(origin: CGPoint(x: 248, y: 518), size: CGSize(width: 120, height: 14))
        card.remainOne.text = "Remain Carb"
        card.data.text = "70"
        card.data.frame.origin.x = 248
        return card
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
        addSubview(iconImageView)
        addSubview(dateLabel)
        addSubview(proteinCard)
        addSubview(carbCard)
        addSubview(fatCard)
        addSubview(remainCarb)
        addSubview(remainCalories)
        addSubview(remainProtein)
    }
    
}

