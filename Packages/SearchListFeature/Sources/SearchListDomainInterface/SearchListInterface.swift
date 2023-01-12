//
//  File.swift
//  
//
//  Created by Merve Şahan on 09.01.23.
//

import Foundation
import SwiftUI

public protocol SearchListInterface {
    associatedtype V: View
    func makeScreen() -> V
}


public protocol TrackUIModelProtocol: Equatable, Hashable, Identifiable {
    var trackID: UUID { get }
    var trackCensoredName: String { get }
    var artist: String { get }
    var previewUrl: String { get }
    var trackImage: String? { get }
}
