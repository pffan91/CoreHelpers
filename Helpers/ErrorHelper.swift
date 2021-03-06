//
//  ErrorHelper.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 3/24/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public class ErrorHelper: NSObject {
    
    // MARK: - Variables
    public static let errorDomain: String = "core.helpers.errors"
    
    // MARK: - Public Methods
    public class func generateErrorWith(localizedTextId: String) -> Error {
        return NSError(domain: errorDomain, code: 0, userInfo: [NSLocalizedDescriptionKey: NSLocalizedString(localizedTextId, comment: "")])
    }
    
    public class func generateErrorWith(text: String) -> Error {
        return NSError(domain: errorDomain, code: 0, userInfo: [NSLocalizedDescriptionKey: text])
    }
    
    public class func generateErrorWith(error: ProviderHTTPRequestError) -> Error {
        var parsedError: Error
        
        if error.errorType.count > 0 {
            parsedError = ErrorHelper.generateErrorWith(text: error.errorType[0].errorMessage)
        } else {
            parsedError = ErrorHelper.generateErrorWith(text: error.errorMessage ?? "Oop, something went wrong")
        }
        
        return parsedError
    }
}
