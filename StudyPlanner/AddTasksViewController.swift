//
//  AddTasksViewController.swift
//  StudyPlanner
//
//  Created by Andrew Lawrence on 2017-10-06.
//  Copyright © 2017 Andrew Lawrence. All rights reserved.
//

import UIKit

class AddTasksViewController: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var timeTextFIeld: UITextField!
    
    @IBAction func doneButtonTapped(_ segue: UIStoryboardSegue) {
    }
   
     

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func taskTableUpdate() {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
