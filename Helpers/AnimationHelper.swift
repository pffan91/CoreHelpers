//
//  AnimationHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 09/04/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public class AnimationHelper: NSObject {
    
    public class func changeRootViewController(toViewController: UIViewController) {
        if !((UIApplication.shared.keyWindow?.rootViewController) != nil) {
            UIApplication.shared.windows[0].rootViewController = toViewController
            return
        }
        
        let snaphotView: UIView = (UIApplication.shared.keyWindow?.snapshotView(afterScreenUpdates: true))!
        toViewController.view.addSubview(snaphotView)
        
        UIApplication.shared.keyWindow?.rootViewController = toViewController
        UIView.animate(withDuration: 0.5, animations: {
            snaphotView.layer.opacity = 0.0
            snaphotView.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5)
        }, completion: { _ in
            snaphotView.removeFromSuperview()
        })
    }
    
    public class func showUI(show: Bool, views: UIView...) {
        if show {
            UIView.animate(withDuration: 0.3, animations: { 
                for view in views {
                    view.alpha = 1.0
                }
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                for view in views {
                    view.alpha = 0.0
                }
            })
        }
    }
    
    public class func animateTextCahngeFor(label: UILabel, newText: String) {
        UIView.transition(with: label, duration: 0.25, options: .transitionCrossDissolve, animations: {
            label.text = newText
        }, completion: nil)
    }
    
}
