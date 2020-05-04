//
//  GoalsViewController.swift
//  Byrd
//
//  Created by Vitor Bryan on 30/04/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class GoalsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var lists: [GoalsList] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lists = createList()
        
    }
    
    func createList() -> [GoalsList]{
        var tempList: [GoalsList] = []
        
        let goal1 = GoalsList(icon: #imageLiteral(resourceName: "WaterIcon"), title: "Water")
        let goal2 = GoalsList(icon: #imageLiteral(resourceName: "FoodIcon"), title: "Food")
        let goal3 = GoalsList(icon: #imageLiteral(resourceName: "SteepsIcon"), title: "Steps")
        let goal4 = GoalsList(icon: #imageLiteral(resourceName: "ActiveIcon"), title: "Active Energy")
        let goal5 = GoalsList(icon: #imageLiteral(resourceName: "SleepIcon"), title: "Sleep Time")
        let goal6 = GoalsList(icon: #imageLiteral(resourceName: "StandIcon"), title: "Stand Time")
        
        tempList.append(goal1)
        tempList.append(goal2)
        tempList.append(goal3)
        tempList.append(goal4)
        tempList.append(goal5)
        tempList.append(goal6)
        
        return tempList
    }

}
extension GoalsViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let list = lists[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalsListTableViewCell") as! GoalsListTableViewCell
        
        
        cell.setGoal(list: list)
        return cell
        
    }
}
