//
//  AddTaskViewController.swift
//  ToDoIt
//
//  Created by Vadim Drobinin on 17/10/14.
//  Copyright (c) 2014 Vadim Drobinin. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var notesField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.layer.borderWidth = 1
        notesField.layer.borderWidth = 1
        
        let color = 555555 // RGB(85,85,85)
        var bColor: CGColor = colorize(color).CGColor! // border color of text fields
        titleField.layer.borderColor = bColor
        notesField.layer.borderColor = bColor
        
        // Do any additional setup after loading the view.
    }
    
    func colorize(hex: Int, alpha: Double = 1.0) -> UIColor {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0xFF00) >> 8) / 255.0
        let blue = Double((hex & 0xFF)) / 255.0
        var color: UIColor = UIColor( red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha:CGFloat(alpha) )
        return color
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "dismissAndSave" {
            let task = Task(title: titleField.text, notes: notesField.text)
            TaskStore.sharedInstance.add(task)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
