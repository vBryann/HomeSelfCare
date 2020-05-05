//
//  FoodViewDailyControllerViewController.swift
//  Byrd
//
//  Created by Fernando de Lucas on 05/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class foodDailyViewControllerViewController: UIViewController {

    let foodDailyView : FoodView = {
        let foodDailyView = FoodView()
        return foodDailyView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let period = ["Daily", "Monthly", "Mouthly"]
        let segmentedController = UISegmentedControl(items: period)
      segmentedController.frame = CGRect (x: 17, y: 197, width: 343, height: 32)
        segmentedController.selectedSegmentIndex = 0
        
        self.view = foodDailyView
        view.backgroundColor = .white
    view.addSubview(segmentedController)
    }
}


