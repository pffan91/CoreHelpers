//
//  LogHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 12/15/17.
//  Copyright © 2017 Motorsport. All rights reserved.
//

import UIKit

class LogHelper: NSObject {

    class func log(_ string: String, sendToServer: Bool = false) {
        print(string) // TODO: Send to server
    }
    
    class func log(object: AnyObject, sendToServer: Bool = false) {
        print(object) // TODO: Send to server
    }
    
}
