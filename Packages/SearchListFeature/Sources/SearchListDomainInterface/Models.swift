//
//  Models.swift
//
//
//  Created by Prajakta Aher on 18/12/22.
//

import Foundation

public struct SearchResultTracksList: Decodable {
    public let resultCount: Int?
    public let results: [Track]?

    public init(resultCount: Int = 0, results: [Track] = [Track]()) {
        self.resultCount = resultCount
        self.results = results
    }
}

public struct Track: Decodable {
    public let trackId: Int?
    public let kind: String?
    public let trackCensoredName: String?
    public let artistName: String?
    public let previewUrl: String?
    public let trackPrice: Double?
    public let currency: String?
    public let isStreamable: Bool?
    public let artworkUrl30: String?

    public init(trackId: Int,
                kind: String,
                trackCensoredName: String,
                artistName: String,
                previewUrl: String,
                trackPrice: Double,
                currency: String,
                isStreamable: Bool,
                artworkUrl30: String?) {
        self.trackId = trackId
        self.kind = kind
        self.trackCensoredName = trackCensoredName
        self.artistName = artistName
        self.previewUrl = previewUrl
        self.trackPrice = trackPrice
        self.currency = currency
        self.isStreamable = isStreamable
        self.artworkUrl30 = artworkUrl30
    }
}
