//
//  ViewController.swift
//  Date
//
//  Created by Cindy Royal on 3/19/19.
//  Copyright © 2019 Cindy Royal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var formattedLabel: UILabel!
    
    
    @IBOutlet weak var daysTo: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func dateChanged(_ sender: Any) {
        let today = Date()
        let todayInt = Int(today.timeIntervalSinceReferenceDate)
        var date:Date = datePicker.date
        let myInt = Int(date.timeIntervalSinceReferenceDate)
        
        dateLabel.text = "\(date)"
        
        let formatter:DateFormatter = DateFormatter()
        formatter.dateStyle = .full // try this with .short and .medium
        let formattedDate:String = formatter.string(from: date)
        formattedLabel.text = formattedDate
        
        daysTo.text = "\(todayInt), \(myInt), Dif in full days: \((myInt - todayInt)/86400)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

