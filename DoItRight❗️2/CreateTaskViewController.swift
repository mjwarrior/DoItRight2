//
//  CreateTaskViewController.swift
//  DoItRight❗️2
//
//  Created by Marc Streeter on 12/7/16.
//  Copyright © 2016 Developer Warriors. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var importantSwitch: UISwitch!
   @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController() 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: AnyObject) {
    //Create a Task from the outlet information 
   let task = Task()
   task.name = taskNameTextField.text!
   task.important = importantSwitch.isOn
        
        
        //Add new task to array in previous viewController
    
    previousVC.tasks.append(task)
    previousVC.tableView.reloadData()
    navigationController!.popViewController(animated: true)
    }
    
    }
