//
//  CHSize + inset.swift
//  ExtensionKit
//

import Foundation

import UIKit

public extension CGSize {
    
    func inset(by insets: UIEdgeInsets) -> CGSize {
        return CGSize(width: width - insets.left - insets.right, height: height - insets.top - insets.bottom)
    }
    
}
