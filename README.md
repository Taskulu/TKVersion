# TKVersion
Comparing version strings in swift

[swift 3] [tested]

## Installation
You need to drag the Version.swift file to your project and you are done.

## Usage
Create instances:
```swift
let a = Version("1.2.6")
let b = Version("1.3.0")
let c = Version("1.3.0")
```

Now you can compare them easily:
```swift
a < b // true
b == c // true
b <= c // true
c > a // true
c <= a // false
```
