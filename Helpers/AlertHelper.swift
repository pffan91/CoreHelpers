//
//  AlertHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 02/04/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

struct AlertParameters {
    let title: String
    let msg: String
    let textFieldPlaceholder: String
    let btnOkText: String
    let btnCancelText: String
}

class AlertHelper: NSObject {
    
    class func showAlertWithOkButton(title: String, msg: String, fromViewController: UIViewController, completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { _ in completion?() }
        alertController.addAction(OKAction)
        fromViewController.present(alertController, animated: true) { }
    }
    
    class func showAlertWithTwoButtons(parameters: AlertParameters, fromViewController: UIViewController, completion:  (() -> Void)? = nil, cancellation: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: parameters.title, message: parameters.msg, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: parameters.btnOkText, style: .default) { _ in completion?() }
        let CancelAction = UIAlertAction(title: parameters.btnCancelText, style: .cancel) { _ in cancellation?() }
        
        alertController.addAction(CancelAction)
        alertController.addAction(OKAction)
        
        fromViewController.present(alertController, animated: true) { }
    }
    
    class func showTextFieldAlert(parameters: AlertParameters, fromViewController: UIViewController, completion: @escaping (String) -> Void) {
        let alertController = UIAlertController(title: parameters.title, message: parameters.msg, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: parameters.btnOkText, style: .default, handler: { _ -> Void in
            let textField = alertController.textFields![0] as UITextField
            
            guard let email = textField.text else {
                return
            }
            completion(email)
        }))
        alertController.addAction(UIAlertAction(title: parameters.btnCancelText, style: .cancel, handler: nil))
        alertController.addTextField(configurationHandler: {(textField: UITextField!) -> Void in
            textField.placeholder = parameters.textFieldPlaceholder
        })
        fromViewController.present(alertController, animated: true, completion: nil)
    }
}
