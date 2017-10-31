//
//  ViewController.swift
//  TipC
//
//  Created by Viraj patel on 3/28/17.
//  Copyright © 2017 Viraj Devlopment. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
    
        super.viewDidLoad()
//        let tooBar = UIToolbar()
//        let doneBtn = UIBarButtonItem(barButtonSystemItem:
//            UIBarButtonSystemItem.done, target: self, action:
//            #selector(self.doneBtn))
//            tooBar.setItems([doneBtn], animated: false),
        billAmount.keyboardType = UIKeyboardType.decimalPad
        
        

        // Do any additional setup after loading the view, typically from a nib.
        
        
//        func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//            self.view.endEditing(true)
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var tipPercent: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var grandTotal: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet var tap: UIView!
    @IBOutlet weak var tipTable: UITableView!
    
    

    
    // slider
    @IBAction func updateSlider(_ sender: UISlider) {

        self.view.endEditing(true)

        
        let tipP = Int(sender.value)
        tipPercent.text = "\(tipP)%"
    }
    
    //calculate button
    @IBAction func calculate(_ sender: UIButton) {
        
        
        let gTotal = NSString(string: billAmount.text!).doubleValue
        let tip = NSString(string: tipPercent.text!).doubleValue
        
        let tp = String(format: "%.2f",(gTotal + (gTotal * (tip/100))))
        
        let ta = String(format: "%.2f",(gTotal*(tip/100)))
        
        grandTotal.text = "$\(tp)";
        tipAmount.text = "$\(ta)";

        
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        //let cell = tableView.dequeueReusableCellWithIdentifier() as! UITableViewCell
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "Tips")
        
        cell2?.textLabel?.text = grandTotal.text;
        
        return cell2;
    }
    
    
    
    
    
}

