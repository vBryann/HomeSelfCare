//
//  progressViewController.swift
//  Byrd
//
//  Created by Fernando de Lucas on 04/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import Foundation
import UIKit

class progressViewController: UIViewController {
    
    
    let progressView : Progress = {
        let progressView = Progress()
        return progressView
    }()
    
    let cardBlankWater : UIView = {
        let blankWater = UIView ()
        blankWater.frame = CGRect(origin: CGPoint(x: 33, y: 131 ), size: CGSize(width: 124, height: 124))
        return blankWater
    }()
    
    let cardBlankFood : UIView = {
        let blank = UIView ()
        blank.frame = CGRect(origin: CGPoint(x: 221, y: 131 ), size: CGSize(width: 124, height: 124))
        return blank
    }()
    
    let cardBlankSteps: UIView = {
        let blank = UIView ()
        blank.frame = CGRect(origin: CGPoint(x: 33, y: 285 ), size: CGSize(width: 124, height: 124))
        return blank
    }()
    
    let cardBlankBlaze: UIView = {
        let blank = UIView ()
        blank.frame = CGRect(origin: CGPoint(x: 221, y: 285 ), size: CGSize(width: 124, height: 124))
        return blank
    }()
    
    let cardBlankSleep: UIView = {
        let blank = UIView ()
        blank.frame = CGRect(origin: CGPoint(x: 33, y: 444 ), size: CGSize(width: 124, height: 124))
        return blank
    }()
    
    let cardBlankStand: UIView = {
        let blank = UIView ()
        blank.frame = CGRect(origin: CGPoint(x: 221, y: 448 ), size: CGSize(width: 124, height: 124))
        return blank
    }()
    
    
    
    let progress = UIGestureRecognizer()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = progressView
        self.view.backgroundColor = UIColor.white
        
        view.addSubview(cardBlankWater)
        view.addSubview(cardBlankFood)
        view.addSubview(cardBlankSteps)
        view.addSubview(cardBlankBlaze)
        view.addSubview(cardBlankSleep)
        view.addSubview(cardBlankStand)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        cardBlankFood.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goFood)))
               
    }
    
    @objc func goFood() {
        let sampleStoryBoard : UIStoryboard = UIStoryboard(name: "Progress", bundle:nil)
        
        let foodView  = sampleStoryBoard.instantiateViewController(withIdentifier: "foodDailyViewController") as! foodDailyViewController
        
        self.navigationController?.pushViewController(foodView, animated: true)
    }
 
    
}
