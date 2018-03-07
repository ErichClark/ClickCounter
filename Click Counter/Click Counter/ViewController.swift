//
//  ViewController.swift
//  Click Counter
//
//  Created by Erich Clark on 3/6/18.
//  Copyright © 2018 Erich Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 80, height: 60)
        button.setTitle("Click Me", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
    }

}

