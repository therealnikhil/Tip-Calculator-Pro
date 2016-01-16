//
//  TableViewController.swift
//  tipsCalculator
//
//  Created by Nikhil Nandkumar on 1/3/16.
//  Copyright © 2016 Nikhil Nandkumar. All rights reserved.
//

import UIKit

var percentages = [12.0, 15.0, 18.0, 21.0, 24.0]

let satisfactionLevel = ["Dreadful", "Poor", "Average", "Good", "Excellent"]

class TableViewController: UITableViewController {

    @IBOutlet weak var dreadfulLabel: UILabel!
    @IBOutlet weak var poorLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var goodLabel: UILabel!
    @IBOutlet weak var excellentLabel: UILabel!
    
    @IBOutlet weak var dreadfulStepper: UIStepper!
    @IBOutlet weak var poorStepper: UIStepper!
    @IBOutlet weak var averageStepper: UIStepper!
    @IBOutlet weak var goodStepper: UIStepper!
    @IBOutlet weak var excellentStepper: UIStepper!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        var defaults = NSUserDefaults.standardUserDefaults()
        
        if (defaults.objectForKey("dreadfulValue") != nil) {
            dreadfulStepper.value = defaults.doubleForKey("dreadfulValue")
        }
        else {
            dreadfulStepper.value = 12.0
        }
        
        if (defaults.objectForKey("poorValue") != nil) {
            poorStepper.value = defaults.doubleForKey("poorValue")
        }
        else {
            poorStepper.value = 15.0
        }
        
        if (defaults.objectForKey("averageValue") != nil) {
            averageStepper.value = defaults.doubleForKey("averageValue")
        }
        else {
            averageStepper.value = 18.0
        }
        
        if (defaults.objectForKey("goodValue") != nil) {
            goodStepper.value = defaults.doubleForKey("goodValue")
        }
        else {
            goodStepper.value = 21.0
        }
        
        if (defaults.objectForKey("excellentValue") != nil) {
            excellentStepper.value = defaults.doubleForKey("excellentValue")
        }
        else {
            excellentStepper.value = 24.0
        }
        
        if (defaults.objectForKey("sliderValue") != nil) {
            slider.value = defaults.floatForKey("sliderValue")
        }
        else {
            slider.value = 2.0
        }
        
        dreadfulLabel.text = NSString(format: "%.1f", dreadfulStepper.value) as String
        poorLabel.text = NSString(format: "%.1f", poorStepper.value) as String
        averageLabel.text = NSString(format: "%.1f", averageStepper.value) as String
        goodLabel.text = NSString(format: "%.1f", goodStepper.value) as String
        excellentLabel.text = NSString(format: "%.1f", excellentStepper.value) as String
        
        label.text = satisfactionLevel[Int(round(slider.value))]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dreadfulStepperValueChanged(sender: UIStepper) {
        dreadfulLabel.text = Double(sender.value).description
        NSUserDefaults.standardUserDefaults().setDouble(Double(sender.value), forKey: "dreadfulValue")
    }
    
    @IBAction func poorStepperValueChanged(sender: UIStepper) {
        poorLabel.text = Double(sender.value).description
        NSUserDefaults.standardUserDefaults().setDouble(Double(sender.value), forKey: "poorValue")
    }
    
    @IBAction func averageStepperValueChanged(sender: UIStepper) {
        averageLabel.text = Double(sender.value).description
        NSUserDefaults.standardUserDefaults().setDouble(Double(sender.value), forKey: "averageValue")
    }
    
    @IBAction func goodStepperValueChanged(sender: UIStepper) {
        goodLabel.text = Double(sender.value).description
        NSUserDefaults.standardUserDefaults().setDouble(Double(sender.value), forKey: "goodValue")
    }
    
    @IBAction func excellentStepperValueChanged(sender: UIStepper) {
        excellentLabel.text = Double(sender.value).description
        NSUserDefaults.standardUserDefaults().setDouble(Double(sender.value), forKey: "excellentValue")
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        label.text = satisfactionLevel[Int(round(slider.value))]
        NSUserDefaults.standardUserDefaults().setFloat(slider.value, forKey: "sliderValue")
    }
    

    // MARK: - Table view data source
    
    /*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections
        return 0
    }
    */
    
    /*
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows
        return 0
    }
    */

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
