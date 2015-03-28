//
//  ViewController.swift
//  ShoeConverter-again
//
//  Created by Jonas Baer on 28.03.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

let convertSum:Double = 30.5

class ViewController: UIViewController {

    @IBOutlet weak var insertShoeSizeTextField: UITextField!
    @IBOutlet weak var convertButtonLabel: UIButton!
    @IBOutlet weak var convertedShowSizeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {

        if insertShoeSizeTextField.text != "" {
            var shoeSize = Double((insertShoeSizeTextField.text as NSString).doubleValue)

            var calculatedConvertedShowSize = shoeSize + convertSum

            convertedShowSizeLabel.hidden = false
            convertedShowSizeLabel.text = "The calculated European Size is: \(calculatedConvertedShowSize)"

            insertShoeSizeTextField.text = ""
            convertButtonLabel.setTitle("Convert", forState: UIControlState.Normal)
        }
    }
}

