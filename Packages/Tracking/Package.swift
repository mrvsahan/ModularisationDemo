// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tracking",
    platforms: [ .iOS(.v14) ],
    products: [
        .library(
            name: "Tracking",
            targets: ["TrackingInterface", "Tracking"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TrackingInterface",
            dependencies: []),
        .target(
            name: "Tracking",
            dependencies: ["TrackingInterface"]),
        .testTarget(
            name: "TrackingTests",
            dependencies: ["Tracking"]),
    ]

)
