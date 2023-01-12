//
//  TrackDetailViewFactory.swift
//  SwiftUIModularisationDemo
//
//  Created by Prajakta Aher on 07/01/23.
//

import SwiftUI
import TrackDetailsInterface
import Common

public struct TrackDetailViewFactory: TrackDetailsInterface {
    public init() {}

    private func makeTrackDetailScreen(with track: TrackUIModel) -> some View {
        let viewModel = TrackDetailViewModel(track: track)
        return TrackDetailScreen(viewModel: viewModel)
    }

    @ViewBuilder public func makeScreen(with track: TrackUIModel) -> some View {
        makeTrackDetailScreen(with: track)
    }
}
