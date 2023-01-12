//
//  File.swift
//  
//
//  Created by Prajakta Aher on 18/12/22.
//

import NetworkInterface
import Foundation

public struct iTunesSearchEndpoint: Endpoint {
    public var baseURL: String = "https://itunes.apple.com"
    public var path: String = "/search"
    public var urlQueryItems: [URLQueryItem]?
    
    public init(searchTerm: String, limit: Int) {
        urlQueryItems = [
            URLQueryItem(name: "term", value: "\(searchTerm)"),
            URLQueryItem(name: "limit", value: "\(limit)")
        ]
    }
}
