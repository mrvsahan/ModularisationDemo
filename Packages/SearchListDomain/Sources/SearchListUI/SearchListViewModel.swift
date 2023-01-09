//
//  SearchViewModel.swift
//  SwiftUIModularisationDemo
//
//  Created by Prajakta Aher on 25/12/22.
//

import Foundation
import SearchListDomainInterface
import DependencyKit
import Common

protocol SearchViewModelProtocol: ObservableObject {
    var tracks: [TrackUIModel] { get set }
    func loadTracks(searchTerm: String, limit: Int)
}

class SearchViewModel: SearchViewModelProtocol {
    @Published var tracks = [TrackUIModel]()
    private let searchListRepository: SearchContentListRepositoryProtocol

    init(searchListRepository: SearchContentListRepositoryProtocol) {
        self.searchListRepository = searchListRepository
    }

    func loadTracks(searchTerm: String, limit: Int) {
        Task { @MainActor [weak self] in
            do {
                guard let tracksDomainModel = try await self?.searchListRepository.fetchList(for: searchTerm, limit: limit).results else { return }
                self?.tracks = tracksDomainModel.compactMap({ track in
                    guard let trackCensoredName = track.trackCensoredName,
                          let artistName = track.artistName,
                          let previewUrl = track.previewUrl else { return nil }
                    return TrackUIModel(trackID: UUID(),
                                        trackCensoredName: trackCensoredName,
                                        artist: artistName,
                                        previewUrl: previewUrl,
                                        trackImage: track.artworkUrl30)
                })
            } catch {
                print("error when fetaching search list \(error.localizedDescription)")
            }
        }
    }
}
