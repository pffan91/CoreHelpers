//
//  LogHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 12/15/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public class LogHelper: NSObject {

    public class func log(_ string: String, sendToServer: Bool = false) {
        print(string) // TODO: Send to server
    }
    
    public class func log(object: AnyObject, sendToServer: Bool = false) {
        print(object) // TODO: Send to server
    }
    
}
