//
//  GPHelper.swift
//  GPUpdate
//
//  Created by Vladyslav Semenchenko on 1/4/18.
//  Copyright © 2018 Motorsport. All rights reserved.
//

import UIKit

class GPHelper: NSObject {
    
    class func colorBy(teamIndex: Int) -> UIColor {
        switch teamIndex {
        case 0:
            return UIColor.init(hexString: "FF0E4C")!
        case 1:
            return UIColor.init(hexString: "53E0A9")!
        default:
            return UIColor.white
        }
    }

    class func teamTitleBy(teamIndex: Int) -> String {
        switch teamIndex {
        case 0:
            return "McLaren"
        case 1:
            return "Mercedes"
        default:
            return "Unknown team"
        }
    }
    
}
