//
//  ProviderHTTPRequestError.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 11/05/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public enum ProviderHTTPRequestErrorType {
    case parsing
    case parsingWithMessage(msg: String)
    case custom
}

public enum ProviderHTTPRequestErrorCode: Int {
    case parsing = 1
}

public class ProviderErrorType: NSObject {
    public let errorType: String
    public let errorMessage: String
    
    public init(errorType: String, errorMessage: String) {
        self.errorType = errorType
        self.errorMessage = errorMessage
    }
}

public class ProviderHTTPRequestError: NSObject {
    public var errorType: [ProviderErrorType] = []
    public var errorMessage: String?
    public var errorCode: Int?
    
    public init(type: ProviderHTTPRequestErrorType) {
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
