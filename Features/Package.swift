// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Features",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "Clocks", targets: ["Clocks"])
    ],
    dependencies: [
        
    ],
    targets: [
        .target(name: "Clocks")
    ]
)
