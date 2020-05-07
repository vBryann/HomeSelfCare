//
//  GSActivityViewController.swift
//  Byrd
//
//  Created by Lucas Fernandes on 07/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class GSActivityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func continueButton(_ sender: Any) {
        self.performSegue(withIdentifier: "activitiesToProgress", sender: self)
    }

}
