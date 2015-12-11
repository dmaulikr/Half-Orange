//
//  LoveViewController.swift
//  Practica 4
//
//  Created by Enrique Conde Sanchez on 29/10/15.
//  Copyright © 2015 Enrique Conde Sanchez. All rights reserved.
//

import UIKit

class LoveViewController: UIViewController {

    var birthday: NSDate?
    
    @IBOutlet weak var loveDayPicker: UIDatePicker!
    
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
        
        if identifier == "Show death" {
            if(loveDayPicker.date.earlierDate(today) == today){
                let alert = UIAlertController(title: "Error", message: "No puedes enamorarte en el futuro", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
                shouldPerform = false
            } else if(loveDayPicker.date.earlierDate(birthday!) != birthday){
                let alert = UIAlertController(title: "Error", message: "No puedes enamorarte antes de nacer", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
                shouldPerform = false
            }
        }
        
        return shouldPerform;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "Show death" {
            
            if let dvc = segue.destinationViewController as? DeathViewController {
                
                dvc.birthday = birthday!
                dvc.loveDay = loveDayPicker.date
            }
        }
    }

}
