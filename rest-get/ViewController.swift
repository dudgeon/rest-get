//
//  ViewController.swift
//  rest-get
//
//  Created by Geoffrey Dudgeon on 9/19/15.
//  Copyright © 2015 Geoff Dudgeon. All rights reserved.
//

import UIKit
import Alamofire // Alamofire cocoapod simplifies working with APIs: https://github.com/Alamofire/Alamofire

/*
Note: To work with non-secure (http vs. https) APIs, must edit Info.plist: http://stackoverflow.com/questions/31254725/transport-security-has-blocked-a-cleartext-http
 - add dictionary: NSAppTransportSecurity
 - add key: NSAllowsArbitraryLoads (boolean)
 - set to: true
*/


/*
REST API tests:
 - http://jsonplaceholder.typicode.com/users (e.g. /users, /posts, /comments)
 - http://httpbin.org/get
 - http://www.justinscarpetti.com/projects/amazon-wish-lister/api/?id=1VKBITQG1TW7O
*/

class ViewController: UIViewController {
    
    /// Outlets
    @IBOutlet weak var restURI: UITextField!
    @IBOutlet weak var restMessage: UITextView!
    @IBOutlet weak var restGetButton: UIButton!
    
    
    /// Actions
    @IBAction func restGet(sender: AnyObject) {
        
        restURI.resignFirstResponder() // dismiss keyboard
        restGetButton.enabled = false // disable button
        
        Alamofire.request(.GET, restURI.text!)
            .responseJSON { _, _, result in
                
                self.restGetButton.enabled = true // re-enable button
                
                // print(result)
                // debugPrint(result)
                
                switch result {
                case .Success(let JSON):
                    print("Success: \(JSON)")
                    self.restMessage.text = String(JSON)
                    
                case .Failure( _, let error):
                    print("Failure: \(error)")
                    self.restMessage.text = String(error)
                }
        }
    } // end restGet()
    
    @IBAction func exampleUri1(sender: AnyObject) {
        restURI.text = "http://jsonplaceholder.typicode.com/users"
    }
    
    @IBAction func exampleUri2(sender: AnyObject) {
        restURI.text = "http://httpbin.org/get"
    }

    @IBAction func exampleUri3(sender: AnyObject) {
        restURI.text = "http://www.justinscarpetti.com/projects/amazon-wish-lister/api/?id=1VKBITQG1TW7O"
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

