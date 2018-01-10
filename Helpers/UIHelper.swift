//
//  UIHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 12/14/17.
//  Copyright © 2017 Motorsport. All rights reserved.
//

import UIKit

class UIHelper {
    
    class func isiPhone5() -> Bool {
        let screenRect = UIScreen.main.bounds
        
        if screenRect.size.height == 568 || screenRect.size.width == 568 {
            return true
        } else {
            return false
        }
    }
    
    class func addMediumParallax(to: UIView) {
        UIHelper.addParallax(to: to, min: -20, max: 20)
    }

    class func addSmallParallax(to: UIView) {
        UIHelper.addParallax(to: to, min: -10, max: 10)
    }
    
    class func removeParallax(to: UIView) {
        for effect in to.motionEffects {
            to.removeMotionEffect(effect)
        }
    }
    
    private class func addParallax(to: UIView, min: Int, max: Int) {
        let verticalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        verticalMotionEffect.minimumRelativeValue = min
        verticalMotionEffect.maximumRelativeValue = max
        
        let horizontalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontalMotionEffect.minimumRelativeValue = min
        horizontalMotionEffect.maximumRelativeValue = max
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontalMotionEffect, verticalMotionEffect]
        to.addMotionEffect(group)
    }
    
    class func setStatusBarStyleTo(_ style: UIStatusBarStyle) {
        UIApplication.shared.statusBarStyle = style
    }
    
}
