//
//  TrackDetailViewFactory.swift
//  SwiftUIModularisationDemo
//
//  Created by Prajakta Aher on 07/01/23.
//

import SwiftUI
import TrackDetailsInterface

public struct TrackDetailViewFactory: TrackDetailsInterface {
    @Environment(\.trackDetailList) var track

    public init() {}

    private func makeTrackDetailScreen() -> some View {
        let viewModel = TrackDetailViewModel(track: track)
        return TrackDetailScreen(viewModel: viewModel)
    }

    public func makeScreen() -> some View {
        makeTrackDetailScreen()
    }
}
