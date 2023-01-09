//
//  SearchListFactory.swift
//  
//
//  Created by Prajakta Aher on 18/12/22.
//

import SearchListDomainInterface
import Network

public struct SearchListFactory: SearchListFactoryProtocol {
    public init() {}

    public func createSearchListRepository() -> SearchContentListRepositoryProtocol {
        let networkManager = NetworkManagerFactory().getNetworkManager()
        let remote = SearchContentListRemoteRepository(networkManager: networkManager)
        return SearchContentListRepository(remote: remote)
    }
}
