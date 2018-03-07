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
    var randomColors = [#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
    
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
        
        
        // decrementButton
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 350, width: 120, height: 60)
        decrementButton.setTitle("No, click me!", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
        // randomColorButton
        let randomColorButton = UIButton()
        randomColorButton.frame = CGRect(x: 150, y: 450, width: 120, height: 60)
        randomColorButton.setTitle("Change Color?", for: .normal)
        randomColorButton.setTitleColor(UIColor.black, for: .normal)
        view.addSubview(randomColorButton)
        
        randomColorButton.addTarget(self, action: #selector(ViewController.randomizeUIColor), for: UIControlEvents.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        updateUI()
    }
    
    @objc func decrementCount() {
        self.count -= 1
        updateUI()
    }
    
    @objc func randomizeUIColor() {
        // method 1 - random member of set
//        let numberOfColors = UInt32(randomColors.count)
//        let colorNumber = Int(arc4random() % numberOfColors)
//        self.view.backgroundColor = randomColors[colorNumber]
        
        // method 2 - random RGB value
        // with help from
        // http://www.codingexplorer.com/create-uicolor-swift/
        var colors = [CGFloat]()
        for _ in 0...2 {
            let colorValue = CGFloat(arc4random() % 255)
            let colorCGFloat = colorValue / 255
            colors.append(CGFloat(colorCGFloat))
            
            // debugging color values
            // print("colorValue = \(colorValue)")
            // print("colorCGFloat = \(colorCGFloat)")
        }
        self.view.backgroundColor = UIColor(red: colors[0], green: colors[1], blue: colors[2], alpha: 1)
    }

    func updateUI() {
        self.label.text = "\(self.count)"
    }
    
}

