//
//  OptionsViewController.swift
//  Byrd
//
//  Created by Vitor Bryan on 04/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

var contentSetup: String!
class OptionsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var options : [OptionsList] = []
    var goalOption: GoalsList?
    var dataPicker: [String] = [String]()
    var selectedIndexPath: IndexPath?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        options = createOption()
        tableView.tableFooterView = UIView(frame: .zero)
        navigationItem.title = goalOption?.title
        tableView.register(SwitchTableViewCell.nib(), forCellReuseIdentifier:SwitchTableViewCell.indentifier )
        tableView.register(PickerTableViewCell.nib(), forCellReuseIdentifier:PickerTableViewCell.indentifier )
    }
    
    func createOption() -> [OptionsList]{
        var tempOption: [OptionsList] = []
        
        switch (goalOption?.id){
        
        case 1: //Water Option
            let option1 = OptionsList(title: "Notifications",id : 1)
            let option2 = OptionsList(title: "Goal",content: ["8 Cups","9 Cups","10 Cups","11 Cups"] , id : 3)
            let option3 = OptionsList(title: "Next Cup Period", content: ["15 Min","20 Min","30 Min"], id: 3)
            tempOption.append(option1)
            tempOption.append(option2)
            tempOption.append(option3)
        
        case 2: //Food Option
            let option1 = OptionsList(title: "Goal", content: ["1000 Kcal","1200 Kcal","1400 Kcal"], id : 3)
            let option2 = OptionsList(title: "Calories Consumed", id: 2)
            let option3 = OptionsList(title: "Protein Consumed", id: 2)
            let option4 = OptionsList(title: "Carbohydrates Consumed", id: 2)
            let option5 = OptionsList(title: "Fat Consumed", id: 2)
            tempOption.append(option1)
            tempOption.append(option2)
            tempOption.append(option3)
            tempOption.append(option4)
            tempOption.append(option5)

        case 3: //Steps Option
            let option1 = OptionsList(title: "Goal",content: ["1 hr","1 hr 30 min", "2 hr" ], id : 3)

            tempOption.append(option1)

        case 4: //Active Option
            let option1 = OptionsList(title: "Goal", content: ["1000 Kcal","1200 Kcal","1400 Kcal"], id : 3)

            tempOption.append(option1)
        
        case  5: //Sleep Option
            let option1 = OptionsList(title: "Goal",content: ["8 hr","7 hr 30 min", "6 hr" ], id : 3)
            tempOption.append(option1)
        
        case 6:  //Stand Option
            let option1 = OptionsList(title: "Goal",content: ["1 hr","1 hr 30 min", "2 hr" ], id : 3)
            tempOption.append(option1)
        default:
            let option1 = OptionsList(title: "Goal", id : 1)
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
        switch (option.id){
        case 1:   // UISwitch case
            if let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for:indexPath) as? SwitchTableViewCell{
                cell.configure(list: option)
                let mySwitch = UISwitch()
                mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
                cell.accessoryView = mySwitch
                return cell
            }
        /*case 2: // Title only
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for:indexPath) as! SwitchTableViewCell
            cell.configure(list: option)
            return cell
        */
        case 3: // Picker case
            let cellP = tableView.dequeueReusableCell(withIdentifier: PickerTableViewCell.indentifier, for:indexPath) as! PickerTableViewCell
                cellP.title.text = option.title
                cellP.setContent(list: option)
                if indexPath != selectedIndexPath {
                   if let contentSetup = contentSetup {
                       cellP.contentPicker.text = contentSetup
                    }
                } else {
                    cellP.contentPicker.text = contentSetup
                }
                
                return cellP
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for:indexPath) as! SwitchTableViewCell
            cell.configure(list: option)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let previousIndexPath = selectedIndexPath
            if indexPath == selectedIndexPath {
                selectedIndexPath = nil
            } else {
                selectedIndexPath = indexPath
            }
            var indexPaths: Array<IndexPath> = []
            if let previous = previousIndexPath {
                indexPaths += [previous]
            }
            if let current = selectedIndexPath {
                indexPaths += [current]
            }
            if indexPaths.count > 0 {
                tableView.reloadRows(at: indexPaths, with: UITableView.RowAnimation.automatic)
            }

        }
        
        func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
            let option = options[indexPath.row]
            if option.id == 3{
                (cell as! PickerTableViewCell).watchFrameChanges()
            }
        }
        func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath){
            let option = options[indexPath.row]
            if option.id == 3{
                (cell as! PickerTableViewCell).ignoreFrameChanges()
            }
        }
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            for cellP in tableView.visibleCells {
                if cellP.isKind(of: PickerTableViewCell.self) {
                    (cellP as! PickerTableViewCell).ignoreFrameChanges()
                }
            }
        }

        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            let option = options[indexPath.row]
            if option.id == 3{
                if indexPath == selectedIndexPath {
                        return PickerTableViewCell.expandedHeight
                    } else {
                        return PickerTableViewCell.defaultHeight
                    }
            }else{
               return PickerTableViewCell.defaultHeight
            }
        }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {

        let result = UIView()

        // recreate insets from existing ones in the table view
        //let insets = tableView.separatorInset
        //let width = tableView.bounds.width - insets.left - insets.right
        let sepFrame = CGRect(x: 0, y: -0.5, width: 600, height: 0.5)

        // create layer with separator, setting color
        let sep = CALayer()
        sep.frame = sepFrame
        sep.backgroundColor = tableView.separatorColor?.cgColor
        result.layer.addSublayer(sep)

        return result
    }
    @objc func didChangeSwitch(_ sender: UISwitch){
        if sender.isOn{
            print("is on")
        }else{
            print("is off")
        }
    }

}


