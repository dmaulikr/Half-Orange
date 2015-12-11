//
//  BirthdayViewController.swift
//  Practica 4
//
//  Created by Enrique Conde Sanchez on 29/10/15.
//  Copyright © 2015 Enrique Conde Sanchez. All rights reserved.
//

import UIKit

class BirthdayViewController: UIViewController {
    
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        let today: NSDate = NSDate()
        var shouldPerform: Bool = true;
        
        if identifier == "ChooseLove" {
        
            if(birthdayPicker.date.earlierDate(today) == today){
                let alert = UIAlertController(title: "Error", message: "No puedes nacer en el futuro", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
                shouldPerform = false
            }
        }
        
        return shouldPerform;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ChooseLove" {
            
            if let lvc = segue.destinationViewController as? LoveViewController {
                
                lvc.birthday = birthdayPicker.date
            }
        }
        
    }
    
    @IBAction func gotoBirthday(segue:UIStoryboardSegue) {
        
    }

}
