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
    @IBOutlet weak var cancelButton: UIButton!
    
   
    @IBAction func cancelButtonPressed(_ sender: Any) {
        timer.invalidate()
        seconds = 60
//        timerLabel.text = timeString(time: TimeInterval(seconds))
    }
    @IBAction func startButtonPressed(_ sender: Any) {
        runTimer()
    }
    
    var seconds: Int = 60
    var timer = Timer()
    var isTimerRunning = false
  
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
       
//        headerLabel.text = "Time Left:";
//        timerLabel.text = "00:00";
        cancelButton.titleLabel?.text = "Pause"
        startButton.titleLabel?.text = "Start"
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(TimerViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    func updateTimer() {
//        var seconds = (Int(timePicker.countDownDuration))
//                timerLabel.text = timeString(time: TimeInterval(seconds))
        seconds -= 1
        let hours = seconds / 3600
        let minutes = seconds / 60 % 60
        
        timerLabel.text = String(format: "%02i:%02i:%02i",hours,minutes,seconds)
    }
    
    func timeString(time:Int) -> String {
        let hours = (Int(time) / 3600)
        let minutes = (Int(time) / 60 % 60)
        let seconds = (Int(time) % 60)
        
        return String(format: "%02i:%02i:%02i")
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
