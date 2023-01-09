//
//  SearchListViewFactory.swift
//  SwiftUIModularisationDemo
//
//  Created by Prajakta Aher on 08/01/23.
//

import SwiftUI
import DependencyKit
import SearchListDomain
import SearchListDomainInterface

public struct SearchListViewFactory: SearchListInterface {
    @Environment(\.trackDetailList) var track

    public init() {}

    private func makeTrackListScreen() -> some View {
        let repository = SearchListFactory().createSearchListRepository()
        let viewModel = SearchViewModel(searchListRepository: repository)
        return SearchList(viewModel: viewModel)
    }

    public func makeScreen() -> some View {
        makeTrackListScreen()
    }
}
