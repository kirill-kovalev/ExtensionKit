//
//  String + Modifcation.swift
//  ExtensionKit
//

import Foundation

public extension String {

    func formated(_ args: CVarArg...) -> Self {
        String(format: self, args)
    }
   
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = capitalizingFirstLetter()
    }
    
    func trimmed() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }

}
