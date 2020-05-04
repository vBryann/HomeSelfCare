//
//  progressView.swift
//  Byrd
//
//  Created by Fernando de Lucas on 04/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class Progress: UIView {

    let cardWater : CardView = {
        let card = CardView()
        
        // título
        card.title.frame = CGRect(origin: CGPoint(x: 77, y: 149 ), size: CGSize(width: 30, height: 14))
        card.title.text = "Water"
        
        // circulo
        card.blankCircle.position = CGPoint(x: 93, y: 191)
        
        //progress
        card.progressCircle.position = CGPoint(x: 93, y: 191)
        card.progressCircle.fillColor = UIColor.clear.cgColor
        card.progressCircle.lineWidth = 11
        card.progressCircle.strokeColor = UIColor.waterBlue.cgColor
                        
        // icons
        card.imageView.image = #imageLiteral(resourceName: "waterIcon")
        card.imageView.frame = CGRect(origin: CGPoint(x: 82, y: 166 ), size: CGSize(width: 21, height: 28))
        
        //describe
        card.describe.text = """
        6/9
        glass
        """
        card.describe.frame = CGRect (origin: CGPoint(x: 69, y: 202 ), size: CGSize(width: 49, height: 22))
        card.describe.numberOfLines = 2
        //card animation
        card.animatedCircle.toValue = 0.6
        card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
        
        return card
    }()
    
    
    let cardFood : CardView = {
        let card = CardView()
        
        // título
        card.title.frame = CGRect(origin: CGPoint(x:269, y: 149 ), size: CGSize(width: 27, height: 14))
        card.title.text = "Food"
        
        // circulo
        card.blankCircle.position = CGPoint(x: 282, y: 191)
        
        //progress
        card.progressCircle.position = CGPoint(x: 282, y: 191)
        card.progressCircle.fillColor = UIColor.clear.cgColor
        card.progressCircle.lineWidth = 11
        card.progressCircle.strokeColor = UIColor.greenFood.cgColor
                        
        // icons
        card.imageView.image = #imageLiteral(resourceName: "foodIcon")
        card.imageView.frame = CGRect(origin: CGPoint(x: 268, y: 166 ), size: CGSize(width: 26, height: 30))
        
        //describe
        card.describe.text = """
        250/2000
        calories
        """
        card.describe.frame = CGRect (origin: CGPoint(x: 258, y: 202 ), size: CGSize(width: 49, height: 22))
        card.describe.numberOfLines = 2
        
        //card animation
        card.animatedCircle.toValue = 0.125
        card.animatedCircle.duration = 12*0.03
        card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
        
        return card
    }()
    
    let cardSteps : CardView = {
           let card = CardView()
           
           // título
           card.title.frame = CGRect(origin: CGPoint(x:72, y: 311 ), size: CGSize(width: 44, height: 14))
           card.title.text = "Steps"
           
           // circulo
           card.blankCircle.position = CGPoint(x: 93, y: 347)
           
           //progress
           card.progressCircle.position = CGPoint(x: 93, y: 347)
           card.progressCircle.fillColor = UIColor.clear.cgColor
           card.progressCircle.lineWidth = 11
           card.progressCircle.strokeColor = UIColor.orangeSteps.cgColor
                           
           // icons
        card.imageView.image = #imageLiteral(resourceName: "stepsIcon")
           card.imageView.frame = CGRect(origin: CGPoint(x: 80, y: 328 ), size: CGSize(width: 26, height: 30))
           
           //describe
           card.describe.text = """
           1200/2000
           steps
           """
           card.describe.frame = CGRect (origin: CGPoint(x: 68, y: 361 ), size: CGSize(width: 50, height: 22))
           card.describe.numberOfLines = 2
           
           //card animation
        card.animatedCircle.toValue = 0.6
        card.animatedCircle.duration = 60*0.03
        card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
           
           return card
       }()
    
    let cardBlaze : CardView = {
        let card = CardView()
        
        // título
        card.title.frame = CGRect(origin: CGPoint(x:260, y: 311 ), size: CGSize(width: 44, height: 14))
        card.title.text = "Blaze"
        
        // circulo
        card.blankCircle.position = CGPoint(x: 282, y: 347)
        
        //progress
        card.progressCircle.position = CGPoint(x:282, y: 347)
        card.progressCircle.fillColor = UIColor.clear.cgColor
        card.progressCircle.lineWidth = 11
        card.progressCircle.strokeColor = UIColor.redBlaze.cgColor
                        
        // icons
     card.imageView.image = #imageLiteral(resourceName: "blazeIcon")
        card.imageView.frame = CGRect(origin: CGPoint(x: 268, y: 328 ), size: CGSize(width: 26, height: 30))
        
        //describe
        card.describe.text = """
        350/1500
        calories
        """
        card.describe.frame = CGRect (origin: CGPoint(x: 257, y: 361 ), size: CGSize(width: 50, height: 22))
        card.describe.numberOfLines = 2
        
        //card animation
        card.animatedCircle.toValue = 0.23
        card.animatedCircle.duration = 23*0.03
        card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
        
        return card
    }()
    
    let cardSleep : CardView = {
        let card = CardView()
        
        // título
        card.title.frame = CGRect(origin: CGPoint(x:72, y: 468 ), size: CGSize(width: 44, height: 14))
        card.title.text = "Sleep"
        
        // circulo
        card.blankCircle.position = CGPoint(x: 93, y: 504)
        
        //progress
        card.progressCircle.position = CGPoint(x: 93, y: 504)
        card.progressCircle.fillColor = UIColor.clear.cgColor
        card.progressCircle.lineWidth = 11
        card.progressCircle.strokeColor = UIColor.purpleSleep.cgColor
                        
        // icons
     card.imageView.image = #imageLiteral(resourceName: "sleepIcon")
        card.imageView.frame = CGRect(origin: CGPoint(x: 79, y: 482 ), size: CGSize(width: 26, height: 30))
        
        //describe
        card.describe.text = """
        6/8
        hours
        """
        card.describe.frame = CGRect (origin: CGPoint(x: 68, y: 518 ), size: CGSize(width: 50, height: 22))
        card.describe.numberOfLines = 2
        
        //card animation
        card.animatedCircle.toValue = 0.75
        card.animatedCircle.duration = 75*0.03
        card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
        
        return card
    }()
    
    let cardStand : CardView = {
        let card = CardView()
        
        // título
        card.title.frame = CGRect(origin: CGPoint(x:260, y: 468 ), size: CGSize(width: 44, height: 14))
        card.title.text = "Stand"
        
        // circulo
        card.blankCircle.position = CGPoint(x: 282, y: 504)
        
        //progress
        card.progressCircle.position = CGPoint(x: 282, y: 504)
        card.progressCircle.fillColor = UIColor.clear.cgColor
        card.progressCircle.lineWidth = 11
        card.progressCircle.strokeColor = UIColor.blueStand.cgColor
                        
        // icons
     card.imageView.image = #imageLiteral(resourceName: "standIcon")
        card.imageView.frame = CGRect(origin: CGPoint(x: 276, y: 482 ), size: CGSize(width: 13, height: 30))
        
        //describe
        card.describe.text = """
        98/180
        min
        """
        card.describe.frame = CGRect (origin: CGPoint(x: 257, y: 518 ), size: CGSize(width: 50, height: 22))
        card.describe.numberOfLines = 2
        //card animation
        card.animatedCircle.toValue = 0.54
        card.animatedCircle.duration = 54*0.03
        card.progressCircle.add(card.animatedCircle, forKey: "Ur So Basic")
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
        addSubview(cardWater)
        addSubview(cardFood)
        addSubview(cardSteps)
        addSubview(cardBlaze)
        addSubview(cardSleep)
        addSubview(cardStand)
    }
    

}
