//
//  UIHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 12/14/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public class UIHelper {
    
    public class func isiPhone5() -> Bool {
        let screenRect = UIScreen.main.bounds
        
        if screenRect.size.height == 568 || screenRect.size.width == 568 {
            return true
        } else {
            return false
        }
    }
    
    public class func addMediumParallax(to: UIView) {
        UIHelper.addParallax(to: to, min: -20, max: 20)
    }

    public class func addSmallParallax(to: UIView) {
        UIHelper.addParallax(to: to, min: -10, max: 10)
    }
    
    public class func removeParallax(to: UIView) {
        for effect in to.motionEffects {
            to.removeMotionEffect(effect)
        }
    }
    
    public class func setStatusBarStyleTo(_ style: UIStatusBarStyle) {
        UIApplication.shared.statusBarStyle = style
    }
    
    // MARK: - Private
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
    
}
