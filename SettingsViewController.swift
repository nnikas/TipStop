//
//  SettingsViewController.swift
//  TipStop
//
//  Created by Nicole Nikas on 12/31/15.
//  Copyright © 2015 Nicole Nikas. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {

    @IBOutlet weak var tipbar: UISegmentedControl!
    @IBOutlet weak var NofSplits: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnEditingChanged(sender: AnyObject) {
        let tipPercentages2 = [0.15, 0.18, 0.20, 0.25]
        let tipPercent2 = tipPercentages2[tipbar.selectedSegmentIndex]

        var nofmultisplits2 = [1.0 ,2.0,3.0,4.0]
        let nofsplits2 = nofmultisplits2[NofSplits.selectedSegmentIndex]
     
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(tipPercent2, forKey: "tP")
        defaults.setDouble(nofsplits2, forKey: "nos")
        defaults.synchronize()
        
    
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
