//
//  ViewController.swift
//  StopWatch
//
//  Created by 小林純也 on 2017/09/07.
//  Copyright © 2017年 Junya Kobayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    var timer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func start() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(
                timeInterval: 0.01,
                target: self,
                selector: #selector(self.up),
                userInfo: nil,
                repeats: true
            )
        }
        
    }
    
    @IBAction func stop() {
        if timer.isValid {
            timer.invalidate()
        }
    }
    
    func up() {
        count = count + 0.01
        label.text = String(format: "%.2f", count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

