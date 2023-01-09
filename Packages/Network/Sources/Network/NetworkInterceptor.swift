//
//  NetworkInterceptor.swift
//  
//
//  Created by Merve Sahan on 19.02.2022.
//

import Alamofire
import Foundation

 final class NetworkInterceptor: RequestInterceptor {
     init () {}
    
     func adapt(_ urlRequest: URLRequest, for session: Session) async throws -> URLRequest {
        var urlRequest = urlRequest
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        return urlRequest
    }
}
