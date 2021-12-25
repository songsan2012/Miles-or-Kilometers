//
//  ViewController.swift
//  Miles or Kilometers
//
//  Created by song on 12/25/21.
//  Copyright © 2021 song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var tenKLabel: UILabel!
    
    @IBOutlet weak var marathonLabel: UILabel!
    
    @IBOutlet weak var fiftyKLabel: UILabel!
    
    
    @IBOutlet weak var useMetricStatus: UISwitch!
    
    let milesToKm = 1.60934
    let kmToMiles = 0.62137119
    
    var useMetric = true
    
    var tenK = 10.0
    var marathon = 26.2
    var fiftyK = 50.0
    
    // -- Use these to hold the values
    var tenKDistance = 0.0
    var marathonDistance = 0.0
    var fiftyKDistance = 0.0
    
    
    // -- Notes
    // Marathon is set in miles
    // 10K and 50K in kilometers
    
    let miles = "Miles"
    let kilometers = "Kilometers"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        checkMetric()
        
    }
    
    
    @IBAction func useMetricChanged(_ sender: Any) {
        
        // -- Check status of metric
        checkMetric()
        
    }
    
    func checkMetric()
    {
        if useMetricStatus.isOn == true
        {
            titleLabel.text = kilometers
            useMetric = true
        }
        else
        {
            titleLabel.text = miles
            useMetric = false
        }
        
        calculateKMToMiles()
        
    }
    
    func calculateKMToMiles()
    {
        // -- Update the distances
        // -- false == use Miles; true == use kilometers
        if useMetric == false
        {
            tenKDistance = tenK * kmToMiles
            marathonDistance = marathon * 1
            fiftyKDistance = fiftyK * kmToMiles
        }
        else {
            marathonDistance = marathon * milesToKm
            tenKDistance = tenK
            fiftyKDistance = fiftyK
        }
        
        // 10K
        tenKLabel.text = String(tenKDistance)
        
        // -- Marathon in Miles
        marathonLabel.text = String(marathonDistance)
        
        fiftyKLabel.text = String(fiftyKDistance)
//        fiftyKLabel.text = String(format: "%.3f", fiftyKDistance)
        
        
    }
    

    
    
}

