//
//  SearchContentListRepository.swift
//  
//
//  Created by Prajakta Aher on 18/12/22.
//

import Foundation
import SearchListDomainInterface

class SearchContentListRepository: SearchContentListRepositoryProtocol {
    let remote: SearchContentListRemoteRepository

    init(remote: SearchContentListRemoteRepository) {
        self.remote = remote
    }

    func fetchList(for searchTerm: String, limit: Int) async throws -> SearchResultTracksList {
        try await remote.fetchList(for: searchTerm, limit: limit)
    }
}
