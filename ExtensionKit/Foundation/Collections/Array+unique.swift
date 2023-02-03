//
//  Array+unique.swift
//  ExtensionKit
//

import Foundation

public extension Array where Element: Hashable {
    func unique() -> Self {
        Array(Set(self))
    }
}

public extension Array {
    func unique<T: Hashable>(by keyTransform: (Element) -> T) -> [Element] {
        let unique = Set(map(keyTransform))
        return filter { unique.contains(keyTransform($0)) }
    }
}
