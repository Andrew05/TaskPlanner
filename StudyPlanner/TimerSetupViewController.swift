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
    
    @IBOutlet weak var BreakIntervalTextBar: UITextField!
    var timePicker = UIDatePicker()
    
    @IBAction func startButton(_ sender: Any) {
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timePicker.datePickerMode = UIDatePickerMode.countDownTimer
        timerIntervalTextBar.inputView = timePicker
        let toolBar = UIToolbar().ToolbarPicker(mySelect: #selector(self.dismissPicker))

        timerIntervalTextBar.inputAccessoryView = toolBar
        
        timePicker.addTarget(self, action: #selector(timePickerChanged(sender:)), for: UIControlEvents.valueChanged)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timePickerChanged(sender: UIDatePicker) {
        
        
        let date = timePicker.date
        let components = Calendar.current.dateComponents([.hour, .minute], from: date)
        let hours = components.hour!
        let minutesLeft = components.minute!
        let hourString = String(hours)
        let minutesString = String(minutesLeft)
        
        timerIntervalTextBar.text = hourString + " Hours & " + minutesString + " Minutes"
        
       let breakTime = (timePicker.countDownDuration) / 5
       let breakMinutes = String(breakTime/60)
    
        BreakIntervalTextBar.text = breakMinutes + "Minutes"
        
    

    }
    
    func dismissPicker() {
        
        view.endEditing(true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "timerViewSegue" {
            if let timerValue = segue.destination as? TimerViewController {
                timerValue.seconds = Int(self.timePicker.countDownDuration)
            }
        }
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
