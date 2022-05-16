//
//  ViewController.swift
//  SetTimer
//
//  Created by Appanna Yaragal on 06/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!

    var timeLaunched: Int = 0
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateLabel()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.updateLabel)), userInfo: nil, repeats: true)
    }

    @objc func updateLabel() {
        timerLabel.text = " Time Launched = \(timeLaunched) Seconds "
        timeLaunched += 1
        if timeLaunched == 15 {
            timer?.invalidate()
        }
    }

   
}

