//
//  SecondViewController.swift
//  Time Travel
//
//  Created by Neagu Dragos-Robert on 13/02/2017.
//  Copyright © 2017 Neagu Dragos-Robert. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showARandomYear()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAnotherYear(sender: UIButton) {
        showARandomYear()
    }
    
    func showARandomYear() {
        let year = Utilities().GetRandomYear()
        Label1.text = Utilities().GetLetterAtIndex(year, location:0)
        Label2.text = Utilities().GetLetterAtIndex(year, location:1)
        Label3.text = Utilities().GetLetterAtIndex(year, location:2)
        Label4.text = Utilities().GetLetterAtIndex(year, location:3)

    }


}

