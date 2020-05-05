//
//  SwitchTableViewCell.swift
//  Byrd
//
//  Created by Vitor Bryan on 05/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    static let indentifier = "SwitchTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "SwitchTableViewCell", bundle: nil)
    }
   
    
    
    @IBOutlet weak var myTitle: UILabel!
    
    public func configure(list: OptionsList){
        myTitle.text = list.title
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
