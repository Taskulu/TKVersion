//
//  Version.swift
//  Taskulu
//
//  Created by Arash on 5/14/17.
//  Copyright © 2017 Taskulu. All rights reserved.
//

import Foundation

public class Version: Comparable {
    public var stringValue = "0.0.0"
    var arrayValue:[Int] {
        get {
            return Version.stringToArray(version: self.stringValue)
        }
    }

    public init(_ string: String) {
        self.stringValue = string
    }

    class func stringToArray(version: String) -> [Int] {
        return version.components(separatedBy: ".").map { (i) -> Int in
            return Int(i) ?? 0
        }
    }

    public static func ==(lhs: Version, rhs: Version) -> Bool {
        return lhs.stringValue == rhs.stringValue
    }

    public static func <(lhs: Version, rhs: Version) -> Bool {
        return lhs.arrayValue.lexicographicallyPrecedes(rhs.arrayValue)
    }

    public static func <=(lhs: Version, rhs: Version) -> Bool {
        return lhs < rhs || lhs == rhs
    }

    public static func >=(lhs: Version, rhs: Version) -> Bool {
        return lhs > rhs || rhs == lhs
    }

    public static func >(lhs: Version, rhs: Version) -> Bool {
        return rhs.arrayValue.lexicographicallyPrecedes(lhs.arrayValue)
    }
}
