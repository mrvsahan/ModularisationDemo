//
//  Endpoint.swift
//  
//
//  Created by Merve Sahan on 19.02.2022.
//

import Alamofire
import Foundation

public enum RequestType {
    case get
    case post
    case put
}

//public enum RequestParamEncoding {
//    case get, post, put
//}

public protocol Endpoint {
    var baseURL: String { get }
    var method: RequestType { get }
    var path: String { get }
    var header: [String: String]? { get }
    var urlQueryItems: [URLQueryItem]? { get }
    //    var body: Parameters? { get }
    //    var encoding: ParameterEncoding { get }
}

public extension Endpoint {
    var urlQueryItems: [URLQueryItem]? { nil }
    var header: [String: String]? { nil }
    var method: RequestType { .get }
    
    func asURL() throws -> URL? {
        var urlComponents = URLComponents(string: baseURL)
        urlComponents?.scheme = "https"
        urlComponents?.path = path
        urlComponents?.queryItems = urlQueryItems
        return try urlComponents?.asURL()
    }
    
    var body: Parameters? { nil }
    
    var encoding: ParameterEncoding {
        switch method {
        case .put, .post:
            return JSONEncoding.default
        default:
            return URLEncoding.default
        }
    }
}

public protocol HTTPTask: Endpoint {}
