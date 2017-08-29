//
//  Springboard.swift
//  CommandPatternCocoaDemo
//
//  Created by huangjianwu on 2017/8/29.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class Springboard {
    
    private var openCommands = [Command]()
    private var closeCommands = [Command]()
    
    func setCommand(openCommand : Command, closeCommand : Command) {
        self.openCommands.append(openCommand)
        self.closeCommands.append(closeCommand)
    }
    
    func openApp(atIndex index : Int){
        if openCommands.count < index{
            print("App doesnt exist")
            return
        }
        openCommands[index].execute()
    }
    
    func closeApp(atIndex index : Int){
        if closeCommands.count < index{
            print("App doesnt exist")
            return
        }
        closeCommands[index].execute()
    }
    
}
