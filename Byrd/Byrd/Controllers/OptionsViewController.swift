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
    var dataPicker: [String] = [String]()
    var selectedIndexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        options = createOption()
        navigationItem.title = goalOption?.title
        tableView.register(SwitchTableViewCell.nib(), forCellReuseIdentifier:SwitchTableViewCell.indentifier )
        tableView.register(PickerTableViewCell.nib(), forCellReuseIdentifier:PickerTableViewCell.indentifier )
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
            let option1 = OptionsList(title: "Goal", content: "Picker here!", id : 3)
            
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
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
        case 2: // Title only
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for:indexPath) as! SwitchTableViewCell
            cell.configure(list: option)
            return cell
        
        case 3: // Picker case
            let cell = tableView.dequeueReusableCell(withIdentifier: PickerTableViewCell.indentifier, for:indexPath) as! PickerTableViewCell
            cell.title.text = option.title
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
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
        (cell as! PickerTableViewCell).watchFrameChanges()
    }
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indePath: IndexPath){
        (cell as! PickerTableViewCell).ignoreFrameChanges()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        for cell in tableView.visibleCells {
            if cell.isKind(of: PickerTableViewCell.self) {
                (cell  as! PickerTableViewCell).ignoreFrameChanges()
            }
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if indexPath == selectedIndexPath {
                return PickerTableViewCell.expandedHeight
            } else {
                return PickerTableViewCell.defaultHeight
            }
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch){
        if sender.isOn{
            print("is on")
        }else{
            print("is off")
        }
    }

}


