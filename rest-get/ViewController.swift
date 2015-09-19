//
//  ViewController.swift
//  rest-get
//
//  Created by Geoffrey Dudgeon on 9/19/15.
//  Copyright © 2015 Geoff Dudgeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// Outlets
    @IBOutlet weak var restURI: UITextField!
    @IBOutlet weak var restMessage: UITextView!
    
    
    /// Actions
    @IBAction func restGet(sender: AnyObject) {
        
        // Dismiss keyboard
        restURI.resignFirstResponder()
        
        /// test basic functionality
        restMessage.text = restURI.text
        
        
        
        

        
    }

    
    /// [_] Map return key to restGet()
    
    
    
    /////////////////////////////////////
    /// Leaving this stuff alone for now:

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    ////////////////////////////////////

}

