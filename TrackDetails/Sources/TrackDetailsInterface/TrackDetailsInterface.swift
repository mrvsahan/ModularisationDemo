//
//  TrackDetailsInterface.swift
//  
//
//  Created by Merve Şahan on 09.01.23.
//

import Foundation
import SwiftUI

public protocol TrackDetailsInterface {
    associatedtype V: View
    func makeScreen() -> V
}
