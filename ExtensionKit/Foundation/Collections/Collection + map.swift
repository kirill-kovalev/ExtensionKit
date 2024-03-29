//
//  Collection + map.swift
//  ExtensionKit
//

import Foundation

public extension Sequence {
  
    func compact<T>() -> [T] where Element == T? {
        return self.compactMap({ $0 })
    }

    func compactMap<ElementOfResult>(as type: ElementOfResult.Type) -> [ElementOfResult] {
        return compactMap({ $0 as? ElementOfResult })
    }
  
}
