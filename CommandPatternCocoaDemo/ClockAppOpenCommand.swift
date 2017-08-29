//
//  ClockAppOpenCommand.swift
//  CommandPatternCocoaDemo
//
//  Created by huangjianwu on 2017/8/29.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class ClockAppOpenCommand : Command {
    
    let clockApp  : ClockApp
    
    init(clockApp : ClockApp) {
        self.clockApp = clockApp
    }
    
    func execute() {
        self.clockApp.showClock()
}
}
    
