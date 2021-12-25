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
    
    
    @IBOutlet weak var useMeticStatus: UISwitch!
    
    let milesToKm = 1.6
    let useMetric = true
    
    var tenK = 10.0
    var marathon = 26.2
    var fiftyK = 50.0
    
    // -- Notes
    // Marathon is set in miles
    // 10K and 50K in kilometers
    
    let miles = "Miles"
    let kilometers = "Kilometers"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // -- Set title
//        if useMetric == true
//        {
//            titleLabel.text = kilometers
//        }
//        else
//        {
//            titleLabel.text = miles
//        }
        
        checkMetric()
        
    }
    
    
    @IBAction func useMetricChanged(_ sender: Any) {
        
        // -- Check status of metric
        
        print("Use Metric changed")
        
//        if useMetric == false
//        {
//            titleLabel.text = "
//        }
        
        
    }
    
    func checkMetric()
    {
        if useMetric == true
        {
            titleLabel.text = kilometers
        }
        else
        {
            titleLabel.text = miles
        }
        
    }
    

    
    
}

