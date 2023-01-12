//
//  SearchContentListRepositoryProtocol.swift
//  
//
//  Created by Prajakta Aher on 18/12/22.
//

import Foundation

public protocol SearchContentListRepositoryProtocol {
    func fetchList(for searchTerm: String, limit: Int) async throws -> SearchResultTracksList
}
