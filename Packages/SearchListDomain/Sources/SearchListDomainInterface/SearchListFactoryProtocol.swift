//
//  SearchListFactory.swift
//  
//
//  Created by Prajakta Aher on 18/12/22.
//

import Foundation
import SwiftUI

public protocol SearchListFactoryProtocol {
    func createSearchListRepository() -> SearchContentListRepositoryProtocol
}
