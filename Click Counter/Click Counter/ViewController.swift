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
    @IBOutlet var label: UILabel! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func incrementCount() {
        self.count += 1
        updateUI()
    }
    
    @IBAction func decrementCount() {
        self.count -= 1
        updateUI()
    }
    
    @IBAction func randomizeUIColor() {
        // method 2 - random RGB value
        // with help from
        // http://www.codingexplorer.com/create-uicolor-swift/
        var colors = [CGFloat]()
        for _ in 0...2 {
            let colorValue = CGFloat(arc4random() % 255)
            let colorCGFloat = colorValue / 255
            colors.append(CGFloat(colorCGFloat))
        }
        self.view.backgroundColor = UIColor(red: colors[0], green: colors[1], blue: colors[2], alpha: 1)
    }

    func updateUI() {
        self.label.text = "\(self.count)"
    }
    
}

