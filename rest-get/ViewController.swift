//
//  ViewController.swift
//  rest-get
//
//  Created by Geoffrey Dudgeon on 9/19/15.
//  Copyright © 2015 Geoff Dudgeon. All rights reserved.
//

import UIKit
import Alamofire // Alamofire cocoapod simplifies working with APIs: https://github.com/Alamofire/Alamofire

/// Note: To work with non-secure (http vs. https) APIs, must edit Info.plist: http://stackoverflow.com/questions/31254725/transport-security-has-blocked-a-cleartext-http
/// add dictionary: NSAppTransportSecurity
/// add key: NSAllowsArbitraryLoads (boolean)
/// set to: true


class ViewController: UIViewController {
    
    /// Outlets
    @IBOutlet weak var restURI: UITextField!
    @IBOutlet weak var restMessage: UITextView!
    
    
    /// Actions
    @IBAction func restGet(sender: AnyObject) {
        
        // Dismiss keyboard
        restURI.resignFirstResponder()
        
        // Let's make a request!
        Alamofire.request(.GET, "http://httpbin.org/get", parameters: ["foo": "bar"])
            .response { request, response, data, error in
                print(request)
                print(response)
                print(error)
        }
        
        
        /// test basic functionality
        // restMessage.text = restURI.text
        
        
        
        

        
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

