//
//  ViewController.swift
//  tipsCalculator
//
//  Created by Nikhil Nandkumar on 12/28/15.
//  Copyright © 2015 Nikhil Nandkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    var tipPercentages = [12.0,15.0,18.0,21.0,24.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Restricting Text to Numeric
        self.billText.delegate = self
        self.billText.keyboardType = UIKeyboardType.DecimalPad
        
        // Initializing Tip and Total Values
        self.tipLabel.text = "$0.00"
        self.totalLabel.text = "$0.00"
        
        if (defaults.objectForKey("dreadfulValue") != nil) {
            tipPercentages[0] = defaults.doubleForKey("dreadfulValue")
        }
        
        if (defaults.objectForKey("poorValue") != nil) {
            tipPercentages[1] = defaults.doubleForKey("poorValue")
        }
        
        if (defaults.objectForKey("averageValue") != nil) {
            tipPercentages[2] = defaults.doubleForKey("averageValue")
        }
        
        if (defaults.objectForKey("goodValue") != nil) {
            tipPercentages[3] = defaults.doubleForKey("goodValue")
        }
        
        if (defaults.objectForKey("excellentValue") != nil) {
            tipPercentages[4] = defaults.doubleForKey("excellentValue")
        }
        
        tipControl.selectedSegmentIndex = Int(round(defaults.floatForKey("sliderValue")))
        
        let tipPercent = tipPercentages[tipControl.selectedSegmentIndex]
        self.tipPercentLabel.text = "Tip (\(tipPercent)%)"
    }
    
    override func viewWillAppear(animated: Bool) {
        if (defaults.objectForKey("dreadfulValue") != nil) {
            tipPercentages[0] = defaults.doubleForKey("dreadfulValue")
        }
        
        if (defaults.objectForKey("poorValue") != nil) {
            tipPercentages[1] = defaults.doubleForKey("poorValue")
        }
        
        if (defaults.objectForKey("averageValue") != nil) {
            tipPercentages[2] = defaults.doubleForKey("averageValue")
        }
        
        if (defaults.objectForKey("goodValue") != nil) {
            tipPercentages[3] = defaults.doubleForKey("goodValue")
        }
        
        if (defaults.objectForKey("excellentValue") != nil) {
            tipPercentages[4] = defaults.doubleForKey("excellentValue")
        }
        
        let tipPercent = tipPercentages[tipControl.selectedSegmentIndex]
        self.tipPercentLabel.text = "Tip (\(tipPercent)%)"
        
        var billAmount = self.billText.text!._bridgeToObjectiveC().doubleValue
        
        var tip = (tipPercent * billAmount) / 100
        var total = billAmount + tip
        
        self.tipLabel.text = "$\(tip)"
        self.totalLabel.text = "$\(total)"
        self.tipPercentLabel.text = "Tip (\(tipPercent)%)"
        
        self.tipLabel.text = String(format: "$%.2f", tip)
        self.totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onScreenTap(sender: UITapGestureRecognizer) {
        self.billText.resignFirstResponder()
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercent = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = self.billText.text!._bridgeToObjectiveC().doubleValue
        
        var tip = (tipPercent * billAmount) / 100
        var total = billAmount + tip
        
        self.tipLabel.text = "$\(tip)"
        self.totalLabel.text = "$\(total)"
        self.tipPercentLabel.text = "Tip (\(tipPercent)%)"
        
        self.tipLabel.text = String(format: "$%.2f", tip)
        self.totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}