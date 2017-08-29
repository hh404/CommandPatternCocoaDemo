//
//  ViewController.swift
//  CommandPatternCocoaDemo
//
//  Created by huangjianwu on 2017/8/29.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit


/// 本程序是https://medium.com/design-patterns-in-swift/design-patterns-in-swift-command-pattern-b95a1f4bbc45的演示Demo
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let springboard = Springboard()
        let weatherApp = WeatherApp()
        let clockApp = ClockApp()
        
        springboard.setCommand(openCommand: WeatherAppOpenCommand(weatherApp: weatherApp), closeCommand: WeatherAppCloseCommand(weatherApp: weatherApp))
        springboard.openApp(atIndex: 0)
        springboard.closeApp(atIndex: 0)
        
        springboard.setCommand(openCommand: ClockAppOpenCommand(clockApp: clockApp), closeCommand: ClockAppCloseCommand(clockApp: clockApp))
        springboard.openApp(atIndex: 1)
        springboard.closeApp(atIndex: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

