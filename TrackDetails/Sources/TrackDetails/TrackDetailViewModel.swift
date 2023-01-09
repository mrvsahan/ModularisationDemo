//
//  TrackDetailViewModel.swift
//  SwiftUIModularisationDemo
//
//  Created by Prajakta Aher on 01/01/23.
//

import Foundation
import DependencyKit
import Common

protocol TrackDetailViewModelProtocol: ObservableObject {
    var track: TrackUIModel? { get }
}

class TrackDetailViewModel: TrackDetailViewModelProtocol {
    @Published var track: TrackUIModel?

    init(track: TrackUIModel?) {
        self.track = track
    }
}
