//
//  WeatherAppOpenCommand.swift
//  CommandPatternCocoaDemo
//
//  Created by huangjianwu on 2017/8/29.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class WeatherAppOpenCommand : Command {
    
    let weatherApp  : WeatherApp
    
    init(weatherApp : WeatherApp) {
        self.weatherApp = weatherApp
    }
    
    func execute() {
        self.weatherApp.getWeatherData()
        self.weatherApp.showWeatherAnimation()
    }
    
}
