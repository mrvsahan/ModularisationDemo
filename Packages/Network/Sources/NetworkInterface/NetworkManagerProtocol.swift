//
//  NetworkManagerProtocol.swift
//  
//
//  Created by Prajakta Aher on 17/12/22.
//

import Foundation

public protocol NetworkManagerProtocol {
    func fetch<T: Decodable>(_ request: Endpoint, type: T.Type) async throws -> T
}
