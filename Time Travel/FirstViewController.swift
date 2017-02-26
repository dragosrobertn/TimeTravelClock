//
//  FirstViewController.swift
//  Time Travel
//
//  Created by Dragos-Robert Neagu on 13/02/2017.
//  Copyright © 2017 Dragos-Robert Neagu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!

    @IBOutlet weak var TimeLabel: UILabel!
    
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let year = Utilities().GetCurrentYear()
        Label1.text = Utilities().GetLetterAtIndex(year, location:0)
        Label2.text = Utilities().GetLetterAtIndex(year, location:1)
        Label3.text = Utilities().GetLetterAtIndex(year, location:2)
        Label4.text = Utilities().GetLetterAtIndex(year, location:3)
        
        TimeLabel.text = Utilities().GetCurrentTime()
        
        
//      To ensure that the clock label updates we need to use a timer.
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(FirstViewController.tick), userInfo: nil, repeats: true)

    }
    
    func tick(){
        TimeLabel.text = Utilities().GetCurrentTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

