//
//  Version.swift
//  Taskulu
//
//  Created by Arash on 5/14/17.
//  Copyright © 2017 Taskulu. All rights reserved.
//

import Foundation

public class TKVersion: Comparable, CustomStringConvertible {
    public var stringValue = "0.0.0"

    public var description: String {
        return "TKVersion: \(self.stringValue)"
    }

    var arrayValue:[Int] {
        get {
            return TKVersion.stringToArray(version: self.stringValue)
        }
    }

    public init(_ string: String) {
        self.stringValue = string
    }

    class func stringToArray(version: String) -> [Int] {
        var array = version.components(separatedBy: ".").map { (i) -> Int in
            return Int(i) ?? 0
        }
        while let last = array.last, last == 0 {
            array.removeLast()
        }
        return array
    }

    public static func ==(lhs: TKVersion, rhs: TKVersion) -> Bool {
        return lhs.arrayValue == rhs.arrayValue
    }

    public static func <(lhs: TKVersion, rhs: TKVersion) -> Bool {
        return lhs.arrayValue.lexicographicallyPrecedes(rhs.arrayValue)
    }

    public static func <=(lhs: TKVersion, rhs: TKVersion) -> Bool {
        return lhs < rhs || lhs == rhs
    }

    public static func >=(lhs: TKVersion, rhs: TKVersion) -> Bool {
        return lhs > rhs || rhs == lhs
    }

    public static func >(lhs: TKVersion, rhs: TKVersion) -> Bool {
        return rhs.arrayValue.lexicographicallyPrecedes(lhs.arrayValue)
    }
}
