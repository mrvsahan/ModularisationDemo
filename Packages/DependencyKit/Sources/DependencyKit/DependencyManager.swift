//
//  DependencyManager.swift
//  DependencyKit
//
//  Created by Merve Sahan on 20.02.2022.
//

import SwiftUI

public class DependencyManager {
    private var modules = [String: Any]()
    public static let shared = DependencyManager()

    public init() { }

    private func key<T>(_ type: T.Type) -> String {
        String(reflecting: type)
    }

    public func register<T>(_ type: T.Type, module: T?) {
        modules[key(type)] = module
    }

    public func get<T>(_ type: T.Type) -> T? {
        guard let module = modules[key(type)] as? T else {
            return nil
        }
        return module
    }
}