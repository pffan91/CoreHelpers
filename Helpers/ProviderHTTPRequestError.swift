//
//  ProviderHTTPRequestError.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 11/05/2017.
//  Copyright © 2017 Motorsport. All rights reserved.
//

import UIKit

enum ProviderHTTPRequestErrorType {
    case parsing
    case parsingWithMessage(msg: String)
    case custom
}

enum ProviderHTTPRequestErrorCode: Int {
    case parsing = 1
}

class ProviderErrorType: NSObject {
    let errorType: String
    let errorMessage: String
    
    public init(errorType: String, errorMessage: String) {
        self.errorType = errorType
        self.errorMessage = errorMessage
    }
}

class ProviderHTTPRequestError: NSObject {
    var errorType: [ProviderErrorType] = []
    var errorMessage: String?
    var errorCode: Int?
    
    init(type: ProviderHTTPRequestErrorType) {
        super.init()
        
        switch type {
        case .parsing:
            errorMessage = "Parsing Error!"
            errorCode = ProviderHTTPRequestErrorCode.parsing.rawValue
        case .parsingWithMessage(let message):
            errorMessage = message
            errorCode = ProviderHTTPRequestErrorCode.parsing.rawValue
        case .custom:
            break
        }
    }
}
