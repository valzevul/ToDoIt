//
//  DismissSegue.swift
//  ToDoIt
//
//  Created by Vadim Drobinin on 17/10/14.
//  Copyright (c) 2014 Vadim Drobinin. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
   
    override func perform() {
        if let controller = sourceViewController.presentingViewController? {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
}
