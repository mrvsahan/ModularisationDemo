//
//  TrackingProtocol.swift
//  
//
//  Created by Prajakta Aher on 25/12/22.
//

import Foundation

public enum Event {
    case screenViewed
    case buttonClicked
}

public protocol TrackingInterface {
    func track(event: Event, properties: [String: AnyObject])
}
