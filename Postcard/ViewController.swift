//
//  ViewController.swift
//  Postcard
//
//  Created by M. Firza Pratama on 12/27/14.
//  Copyright (c) 2014 M. Firza Pratama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var textEnterName: UITextField!
    @IBOutlet weak var textEnterMessage: UITextField!
    @IBOutlet weak var buttonSendMessage: UIButton!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonSendPressed(sender: UIButton) {
        if (labelName.hidden == true) {
            labelName.hidden = false
        }
        
        labelName.text = textEnterMessage.text
        labelName.textColor = UIColor.redColor()
        
        textEnterMessage.text = ""
        textEnterMessage.resignFirstResponder()
    
        buttonSendMessage.setTitle("Message sent", forState: UIControlState.Normal)
    }
}

