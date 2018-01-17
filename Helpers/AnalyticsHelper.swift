//
//  AnalyticsHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 12/15/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit
import Flurry_iOS_SDK

public enum AnalyticEvent: String {
    case test
}

public enum AnalyticErrorCodes: String {
    case test
}

public class AnalyticsHelper: NSObject {
    
    public class func sendEvent(event: AnalyticEvent) {
        Flurry.logEvent(event.rawValue)
    }
    
    public class func sendEvent(event: AnalyticEvent, value: [String: String]) {
        Flurry.logEvent(event.rawValue, withParameters: value)
    }
    
    public class func sendError(error: Error, errorCode: AnalyticErrorCodes, message: String) {
        Flurry.logError(errorCode.rawValue, message: message, error: error)
    }
    
}
