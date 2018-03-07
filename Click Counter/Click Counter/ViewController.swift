//
//  ViewController.swift
//  Click Counter
//
//  Created by Erich Clark on 3/6/18.
//  Copyright © 2018 Erich Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // incrementButton
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 150, y: 250, width: 80, height: 60)
        incrementButton.setTitle("Click Me", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrementButton)
        
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    

}

