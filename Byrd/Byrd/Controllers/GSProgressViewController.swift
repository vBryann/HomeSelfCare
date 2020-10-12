//
//  GSProgressViewController.swift
//  Byrd
//
//  Created by Lucas Fernandes on 07/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class GSProgressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func continueButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let tabBarVC = storyboard.instantiateViewController(withIdentifier: "tabBarVC")
        self.present(tabBarVC, animated: true, completion: nil)
        

    }
    
}
