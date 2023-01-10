//
//  TrackDetailsInterface.swift
//  
//
//  Created by Merve Şahan on 09.01.23.
//

import Foundation
import SwiftUI
import Common

public protocol TrackDetailsInterface {
    associatedtype V: View
    @ViewBuilder func makeScreen(with track: TrackUIModel) -> V
}
