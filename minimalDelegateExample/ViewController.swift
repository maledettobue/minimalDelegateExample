//
//  ViewController.swift
//  minimalDelegateExample
//

import UIKit
    
    // ViewController conforms to MyActionDelegate implementing myFirstAction
    class ViewController: UIViewController, MyActionDelegate {
        
        // MyAction instamce
        var action:MyAction = MyAction()
        var counter:Int = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // MyAction's delegate is this ViewController
            action.delegate = self
            print(self)
           
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
        // ViewController conforms to MyActionDelegate implementing myFirstAction
        func myFirstAction() {
            // called every 3 seconds
            counter+=1
            print("called \(counter)")
        }
        
}
