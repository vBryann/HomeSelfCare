//
//  OptionsViewController.swift
//  Byrd
//
//  Created by Vitor Bryan on 04/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var options : [OptionsList] = []
    var goalOption: GoalsList?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        options = createOption()
        navigationItem.title = goalOption?.title
        tableView.register(SwitchTableViewCell.nib(), forCellReuseIdentifier:SwitchTableViewCell.indentifier )
    }
    
    func createOption() -> [OptionsList]{
        var tempOption: [OptionsList] = []
        
        switch (goalOption?.id){
        
        case 1: //Water Option
            let option1 = OptionsList(title: "Notifications",id : 1)
            let option2 = OptionsList(title: "Goal", id : 2)
            tempOption.append(option1)
            tempOption.append(option2)
        
        case 2: //Food Option
            let option1 = OptionsList(title: "Goal", content: "Picker here!", id : 1)
            
            tempOption.append(option1)

        case 3: //Steps Option
            let option1 = OptionsList(title: "Goal", content: "Picker here!", id : 1)

            tempOption.append(option1)

        case 4: //Active Option
            let option1 = OptionsList(title: "Goal", content: "Picker here!", id : 1)

            tempOption.append(option1)
        
        case  5: //Sleep Option
            let option1 = OptionsList(title: "Goal", content: "Picker here!", id : 1)
            let option2 = OptionsList(title: "Reminder", content: "Switch here!", id : 1)
            tempOption.append(option1)
            tempOption.append(option2)
        
        case 6:  //Stand Option
            let option1 = OptionsList(title: "Goal", content: "Picker here!", id : 1)
            let option2 = OptionsList(title: "Reminder", content: "Switch here!", id : 1)
            let option3 = OptionsList(title: "Next Cup Period", content: "Picker here!", id : 1)
            tempOption.append(option1)
            tempOption.append(option2)
            tempOption.append(option3)
        default:
            let option1 = OptionsList(title: "Goal", content: "Picker here!", id : 1)
            tempOption.append(option1)
        }
        
        
        
        
        return tempOption
    }
     
    
    
}
extension OptionsViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let option = options[indexPath.row]
        switch option.id {
        case 1:   // UISwitch case
            if let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for:indexPath) as? SwitchTableViewCell{
                cell.configure(list: option)
                let mySwitch = UISwitch()
                mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
                cell.accessoryView = mySwitch
                return cell
            }
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for:indexPath) as! SwitchTableViewCell
            cell.configure(list: option)
            return cell
        
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for:indexPath) as! SwitchTableViewCell
            cell.configure(list: option)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for:indexPath) as! SwitchTableViewCell
        cell.configure(list: option)
        return cell
        
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch){
        if sender.isOn{
            print("is on")
        }else{
            print("is off")
        }
    }
}
