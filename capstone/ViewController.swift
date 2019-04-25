//
//  ViewController.swift
//  capstone
//
//  Created by Chase Ward on 4/23/19.
//  Copyright © 2019 Chase Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Create a DatePicker
        let datePicker: UIDatePicker = UIDatePicker()
        
        // Position date picket within a view
        datePicker.frame = CGRect(x: 10, y: 50, width: self.view.frame.width, height: 200)
        
        // Set some of UIDatePicker properties
        datePicker.backgroundColor = UIColor.white
        
        // Add an event to call onDidChangeDate function when value is changed
        datePicker.addTarget(self, action: #selector(ViewController.datePickerValueChanged(_:)), for: .valueChanged)
        
        // Add datePicker to the view
        self.view.addSubview(datePicker)
    
   
    func didPickerValueChanged(_ sender: UIDatePicker){
        
        // Create date formatter
        let dateFormatter: DateFormatter = DateFormatter()
        
        // Set date format
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        // Apply date format
        let selectedDate: String = dateFormatter.string(from: sender.date)
        
        print("Selected value \(selectedDate)")
        }
        
        func didRecieveMemoryWarning(){
            super.didReceiveMemoryWarning()
            
           }
    }
}
