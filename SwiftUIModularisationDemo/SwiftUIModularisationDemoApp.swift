//
//  SwiftUIModularisationDemoApp.swift
//  SwiftUIModularisationDemo
//
//  Created by Prajakta Aher on 25/12/22.
//

import SwiftUI
import SearchListDomain // PTODO delete this by moving dependency injection
import DependencyKit
import TrackDetailsInterface
import SearchListDomainInterface

@main
struct SwiftUIModularisationDemoApp: App {
    init() {
        ModuleInitializer.shared.registerModule()
    }

    var body: some Scene {
        WindowGroup {
            getRootView()
        }
    }
    
    private func getRootView() -> some View {
        VStack {
            AnyView(erasing: DependencyManager.shared.get(SearchListInterface.self)!.makeScreen())
        }
    }
}
