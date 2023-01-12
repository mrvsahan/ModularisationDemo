//
//  ContentView.swift
//  SwiftUIModularisationDemo
//
//  Created by Prajakta Aher on 25/12/22.
//

import SwiftUI
import UIComponent
import DependencyKit
import TrackDetailsInterface
import Common

struct SearchList<ViewModel>: View where ViewModel: SearchViewModelProtocol {
    @ObservedObject var viewModel: ViewModel
    @State var isShowingDetail: Bool = false

    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        // TODO add a search bar in UI and bind the text to call request after every 3 seconds
        NavigationView {
            List(viewModel.tracks, id: \.trackID) { track in
                NavigationLink(isActive: $isShowingDetail) {
                    AnyView(erasing: DependencyManager.shared.get(TrackDetailsInterface.self)!.makeScreen(with: track))
                } label: {
                    DetailView(title: track.trackCensoredName,
                               subTitle: track.artist,
                               ctaTitle: "Play")
                    .allowsHitTesting(true)
                    .onTapGesture {
                        isShowingDetail.toggle()
                    }
                }
            }
        }
        .onAppear {
            self.viewModel.loadTracks(searchTerm: "AI", limit: 10)
        }
    }
}

extension SearchList: DetailViewDelegate {
    func buttonAction(sender: UIComponent.DetailView) {
        // TODO
    }
}

class MockViewModel: SearchViewModelProtocol {
    @Published var tracks: [TrackUIModel]
    
    init(tracks: [TrackUIModel]) {
        self.tracks = tracks
    }

    func loadTracks(searchTerm: String, limit: Int) {}
}
