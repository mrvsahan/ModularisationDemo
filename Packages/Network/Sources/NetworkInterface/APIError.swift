//
//  APIError.swift
//  
//
//  Created by Merve Sahan on 18.02.2022.
//

import Foundation

public struct APIError: Error {
    public let description: String
    
    public static var generic = APIError(description: "Generic Error")
    public static var network = APIError(description: "Network Error")
    public static var noData = APIError(description: "Data is nil")
    public static var decoding  = APIError(description: "Decode is fail")
    public static var noCastUrl = APIError(description: "URL preparation error")
}
