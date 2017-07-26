//
//  File.swift
//  delegateTest
//

import UIKit

// the protocol only contains a single method
protocol MyActionDelegate:class {
    func myFirstAction()
}

class MyAction {
    
    // MyAction delegate
    weak var delegate:MyActionDelegate?
    
    init(){
        
        // timer will execute caller every 3 seconds
        Timer.scheduledTimer(timeInterval: TimeInterval(3), target: self, selector: #selector(self.caller), userInfo: nil, repeats: true)
        
    }
    
    @objc func caller(){
        delegate?.myFirstAction()
    }
    
}
