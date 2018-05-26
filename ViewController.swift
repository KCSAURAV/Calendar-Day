//
//  ViewController.swift
//  DatePicker
//
//  Created by SAURAV on 5/26/18.
//  Copyright © 2018 SAURAV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var myLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    myLabel.text = "Choose a date"
  }

  
  @IBAction func didChangeDate(_ sender: UIDatePicker) {
    let date:Date = sender.date
    let formatter:DateFormatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    let dayOfWeek:String = formatter.string(from: date)
    myLabel.text = "Day: \(dayOfWeek)"
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

