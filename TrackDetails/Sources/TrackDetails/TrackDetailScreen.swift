//
//  TrackDetailScreen.swift
//  SwiftUIModularisationDemo
//
//  Created by Prajakta Aher on 01/01/23.
//

import SwiftUI
import DependencyKit
import Common

struct TrackDetailScreen<ViewModel>: View where ViewModel: TrackDetailViewModelProtocol {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        GeometryReader { proxy in
            VStack {
                if let track = viewModel.track {
                    if let urlStr = track.trackImage, let url = URL(string: urlStr), let imgData = try? Data(contentsOf: url), let image = UIImage(data: imgData) {
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: proxy.size.width * 0.25, height: (image.size.height/image.size.width)*proxy.size.height*0.25)
                    }
                    Text(verbatim: track.trackCensoredName)
                        .font(Font.title3)
                    Text(verbatim: track.artist)
                        .font(Font.caption)
                }
            }.frame(width: proxy.size.width)
        }.navigationTitle("Track Detail")
    }
}

struct TrackDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        let model = TrackUIModel(trackID: UUID(),
                                     trackCensoredName: "Track 1",
                                     artist: "Test Artist",
                                     previewUrl: "",
                                     trackImage: "https://is4-ssl.mzstatic.com/image/thumb/Video125/v4/21/0b/4a/210b4a1c-0de6-3a03-27a5-408948f7f173/pr_source.lsr/30x30bb.jpg")
        let viewModel = TrackDetailViewModel(track: model)
        TrackDetailScreen(viewModel: viewModel)
    }
}
