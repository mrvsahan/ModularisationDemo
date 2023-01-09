//
//  NetworkManagerFactory.swift
//  
//
//  Created by Prajakta Aher on 17/12/22.
//

import NetworkInterface

public struct NetworkManagerFactory: NetworkManagerFactoryProtocol {
    public init() {}

    public func getNetworkManager() -> NetworkInterface.NetworkManagerProtocol {
        NetworkManager()
    }
}
