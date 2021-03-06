//
//  MockURLSession.swift
//  SkyTests
//
//  Created by Mars on 07/10/2017.
//  Copyright © 2017 Mars. All rights reserved.
//

import Foundation
@testable import Sky

class MockURLSession: URLSessionProtocol {
    var responseData : Data?
    var responseError : Error?
    var responseHeader : HTTPURLResponse?
    var sessionDataTask = MockURLSessionDataTask()
    
    
    func dataTask(with request: URLRequest, completionHandler: @escaping URLSessionProtocol.dataTaskHandler) -> URLSessionDataTaskProtocol {
        completionHandler(responseData, responseHeader, responseError)
        return sessionDataTask
    }
}
