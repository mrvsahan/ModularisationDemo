//
//  SearchContentListRemoteRepository.swift
//  
//
//  Created by Prajakta Aher on 18/12/22.
//

import Foundation
import SearchListDomainInterface
import NetworkInterface

class SearchContentListRemoteRepository: SearchContentListRepositoryProtocol {
    let networkManager: NetworkManagerProtocol

    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }

    func fetchList(for searchTerm: String, limit: Int) async throws -> SearchResultTracksList {
        let endpoint = iTunesSearchEndpoint(searchTerm: searchTerm, limit: limit)
        return try await networkManager.fetch(endpoint, type: SearchResultTracksList.self)
    }
}
