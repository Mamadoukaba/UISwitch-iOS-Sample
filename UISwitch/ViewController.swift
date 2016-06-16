//
//  ViewController.swift
//  UISwitch
//
//  Created by Mamadou Kaba on 6/15/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    //intialize the switch
    var mySwitch: UISwitch!

    //MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //construct Switch
        mySwitch = UISwitch(frame: CGRect(x: 200, y: 200, width: 100, height: 23))
        //Center Switch on the View
        mySwitch.center = view.center
        //Add Switch to the View
        view.addSubview(mySwitch)
        //Calling Turn Switch on Method
        turnSwitchOn()
        //Calling Change Switch Color Method
        changeSwitchColor()
        //Add Target to Switch
        mySwitch.addTarget(self, action: "mySwitchValueChanged:", forControlEvents: .ValueChanged)
    }
    
    //Function that displays switch on at runtime.
    func turnSwitchOn() {
        mySwitch.setOn(true, animated: true)
    
    }
    
    //Function that customizes the colors of the Switch
    func changeSwitchColor() {
        mySwitch.tintColor = UIColor.blueColor()
        mySwitch.onTintColor = UIColor.darkGrayColor()
        mySwitch.thumbTintColor = UIColor.cyanColor()
    }
    
    //MARK: Target Action
    //Function that run everytime the switch's value is changed.
    func mySwitchValueChanged(sender: UISwitch) {
        if mySwitch.on {
            print("Switch is on!")
        } else {
            print("Switch is off!")
        }
    }
}

