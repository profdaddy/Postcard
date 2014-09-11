//
//  ViewController.swift
//  Postcard
//
//  Created by bsmith on 9/10/14.
//  Copyright (c) 2014 bsmith.me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageSentLabel: UILabel!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // code will run when button pressed
        // adding comment to test git commit
        messageSentLabel.hidden = false;
        messageSentLabel.text = nameTextField.text;
        messageSentLabel.textColor = UIColor.redColor();
        nameTextField.text = "";
        nameTextField.resignFirstResponder();
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        
    }

}

