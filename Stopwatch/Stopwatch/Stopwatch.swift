//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Steven Liu on 2/21/19.
//  Copyright © 2019 Steven Liu. All rights reserved.
//

import Foundation

class Stopwatch {
    
    private var startTime: NSDate?
    
    func start() {
        startTime = NSDate()
        
    }
    
    func stop() {
        startTime = nil
        
    }
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var elapsedTimeAsString: String {
        let milliseconds = Int(elapsedTime*100)%100
        let seconds = Int(elapsedTime.truncatingRemainder(dividingBy: 60))
        let minutes = Int(elapsedTime/60)
        
        return String(format: "%02d:%02d:%1d", minutes, seconds, milliseconds)
    }
    
    var isRunning: Bool{
        if ((startTime) != nil){
            return true
        }
        else{
            return false
        }
    }
}
