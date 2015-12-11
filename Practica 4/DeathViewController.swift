//
//  DeathViewController.swift
//  Practica 4
//
//  Created by Enrique Conde Sanchez on 29/10/15.
//  Copyright © 2015 Enrique Conde Sanchez. All rights reserved.
//

import UIKit

class DeathViewController: UIViewController {
    
    var birthday: NSDate?
    var loveDay: NSDate?

    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var deathLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MMMM-yyyy"
        
        let t = birthday!
            
        birthdayLabel.text = String(UnicodeScalar(0x1F476)) + " Naciste el " + dateFormatter.stringFromDate(t)
        
        let t2 = loveDay!
        
        loveLabel.text = String(UnicodeScalar(0x1F491)) + " Te enamoraste el " + dateFormatter.stringFromDate(t2)
        
        var death: Double
        
        death = loveDay!.timeIntervalSinceDate(birthday!)
        let deathDay: NSDate = loveDay!.dateByAddingTimeInterval(death)
        
        deathLabel.text = String(UnicodeScalar(0x1F480)) + " Morirás el " + dateFormatter.stringFromDate(deathDay)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
