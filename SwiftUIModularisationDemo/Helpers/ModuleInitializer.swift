//
//  ModuleInitializer.swift
//  FreeNow
//
//  Created by Merve Sahan on 20.02.2022.
//

import Foundation
import DependencyKit
import SearchListUI
import TrackDetails
import TrackDetailsInterface
import SearchListDomainInterface

@objcMembers
class ModuleInitializer: NSObject {
    
    static let shared = ModuleInitializer()
    
    func registerModule() {
//        RoutingManager.shared.register(route: Route.list, navigatiable: TracksListViewFactory(routing: RoutingManager.shared))
//        RoutingManager.shared.register(route: Route.details, navigatiable: TrackDetailViewFactory())

        DependencyManager.shared.register((any TrackDetailsInterface).self, module: TrackDetailViewFactory())
        DependencyManager.shared.register((any SearchListInterface).self, module: SearchListViewFactory())
    }

//    var searchList: any NavigatiableProtocol {
//        return RoutingManager.shared.getRoute(route: .list)
//    }
}
