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
    var goalIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lists = createList()
        
    }
    
    func createList() -> [GoalsList]{
        var tempList: [GoalsList] = []
        
        let goal1 = GoalsList(icon: #imageLiteral(resourceName: "WaterIcon"), title: "Water",id: 1)
        let goal2 = GoalsList(icon: #imageLiteral(resourceName: "FoodIcon"), title: "Food", id: 2)
        let goal3 = GoalsList(icon: #imageLiteral(resourceName: "SteepsIcon"), title: "Steps", id: 3)
        let goal4 = GoalsList(icon: #imageLiteral(resourceName: "ActiveIcon"), title: "Active Energy", id: 4)
        let goal5 = GoalsList(icon: #imageLiteral(resourceName: "SleepIcon"), title: "Sleep Time", id: 5)
        let goal6 = GoalsList(icon: #imageLiteral(resourceName: "StandIcon"), title: "Stand Time", id: 6)
        
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "showOptions", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let destination = segue.destination as? OptionsViewController{
            destination.goalOption = lists[(tableView.indexPathForSelectedRow?.row)!]
             tableView.deselectRow(at:tableView.indexPathForSelectedRow!, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let list = lists[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalsListTableViewCell") as! GoalsListTableViewCell
        
        cell.setGoal(list: list)
        return cell
        
    }
}
