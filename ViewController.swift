//
//  ViewController.swift
//  TipStop
//
//  Created by Nicole Nikas on 12/21/15.
//  Copyright © 2015 Nicole Nikas. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var NaviBar: UINavigationBar!
    @IBOutlet weak var SettingsButton: UIBarButtonItem!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var NofSplits: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let tipPercent = defaults.doubleForKey("tP")
        let nofsplits = defaults.doubleForKey("nos")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnEditingChanged(sender: AnyObject) {
       
        let tipPercentages = [0.15, 0.18, 0.20, 0.25]
        let tipPercent = tipPercentages[tipControl.selectedSegmentIndex]
        let nofmultisplits = [1.0,2.0,3.0,4.0]
        let nofsplits = nofmultisplits[NofSplits.selectedSegmentIndex]
        
        
        let billamount = NSString(string: billField.text!).doubleValue
        let tip = billamount * tipPercent
        let totalsub = billamount + tip
        let total = totalsub/nofsplits
        
        tipLabel.text = "\(tip)"
        totalLabel.text = "\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    

  }


