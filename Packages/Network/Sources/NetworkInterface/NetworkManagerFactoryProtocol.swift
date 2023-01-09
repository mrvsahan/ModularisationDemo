//
//  NetworkManagerFactoryProtocol.swift
//  
//
//  Created by Prajakta Aher on 17/12/22.
//

import Foundation

public protocol NetworkManagerFactoryProtocol {
    func getNetworkManager() -> NetworkManagerProtocol
}
