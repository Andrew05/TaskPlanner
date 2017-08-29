//
//  TimerViewController.swift
//  StudyPlanner
//
//  Created by Andrew Lawrence on 2017-08-29.
//  Copyright © 2017 Andrew Lawrence. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var timePicker: UIDatePicker!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        headerLabel.text = "Time Left:";
        timerLabel.text = "00:00";
        pauseButton.titleLabel?.text = "Pause";
        startButton.titleLabel?.text = "Start"
        timePicker.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func timerEnded() {
        
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
