//
//  ViewController.swift
//  Timer
//
//  Created by Joy Umali on 7/22/16.
//  Copyright © 2016 Joy Umali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    // Defining the time variable here makes it a globale variable. If time variable is in the increaseTimer below, it will be reset to 0 each time the function runs.
    var time = 0
    
    @IBOutlet weak var timeLabel: UILabel!

    // INCREASE TIMER FUNCTION. And set label one second more than it was before.
    func icreaseTimer() {
        time++ // second is added each time.
        timeLabel.text = "\(time)"   // sets the text of timeLabel to the time as a string. Can also be written as timeLabel.text = String(time)
    }
    
    @IBAction func startButton(sender: AnyObject) {
        // launch timer here but define timer outside any of the IBActions.
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
    }
    
    @IBAction func resetButton(sender: AnyObject) {
    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* place timer here so it loads from the start and create function before viewDidLoad()
        var timer = NSTimer()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

