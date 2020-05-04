//
//  GoalsListTableViewCell.swift
//  Byrd
//
//  Created by Vitor Bryan on 30/04/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class GoalsListTableViewCell: UITableViewCell{

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setGoal(list: GoalsList){
        iconImageView.image = list.icon
        titleLabel.text = list.title
    }
    
}
