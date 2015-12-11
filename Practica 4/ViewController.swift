//
//  ViewController.swift
//  Practica 4
//
//  Created by Enrique Conde Sanchez on 29/10/15.
//  Copyright © 2015 Enrique Conde Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        welcomeText.text = String(UnicodeScalar(0x1F34A)) + String(UnicodeScalar(0x1F52A)) + String(UnicodeScalar(0x1F48F)) + String(UnicodeScalar(0x1F51C)) + String(UnicodeScalar(0x2620))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gotoRoot(segue:UIStoryboardSegue) {
        
    }
}

