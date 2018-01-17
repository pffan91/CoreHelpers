//
//  AnalyticsHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 12/15/17.
//  Copyright © 2017 Motorsport. All rights reserved.
//

import UIKit
import Flurry_iOS_SDK

enum AnalyticEvent: String {
    case test
}

enum AnalyticErrorCodes: String {
    case test
}

class AnalyticsHelper: NSObject {
    
    class func sendEvent(event: AnalyticEvent) {
        Flurry.logEvent(event.rawValue)
    }
    
    class func sendEvent(event: AnalyticEvent, value: [String: String]) {
        Flurry.logEvent(event.rawValue, withParameters: value)
    }
    
    class func sendError(error: Error, errorCode: AnalyticErrorCodes, message: String) {
        Flurry.logError(errorCode.rawValue, message: message, error: error)
    }
    
}
