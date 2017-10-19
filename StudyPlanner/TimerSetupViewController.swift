//
//  TimerSetupViewController.swift
//  StudyPlanner
//
//  Created by Andrew Lawrence on 2017-10-18.
//  Copyright © 2017 Andrew Lawrence. All rights reserved.
//

import UIKit

class TimerSetupViewController: UIViewController {

    @IBOutlet weak var timerIntervalTextBar: UITextField!
    
    var timePicker = UIDatePicker()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerIntervalTextBar.inputView = timePicker
        timerIntervalTextBar.addTarget(self, action: Selector(("timePickerChanged")), for: UIControlEvents.valueChanged)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timePickerChanged(sender: UIDatePicker) {
        
        print(timePicker.date)
//        timerIntervalTextBar.text = timePicker.date
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
