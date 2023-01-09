// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Network",
    platforms: [ .iOS(.v14) ],
    products: [
        .library(
            name: "Network",
            targets: ["NetworkInterface", "Network"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.5.0"))
    ],
    targets: [
        .target(
            name: "NetworkInterface",
            dependencies: ["Alamofire"]),
        .target(
            name: "Network",
            dependencies: ["Alamofire", "NetworkInterface"]),
        .testTarget(
            name: "NetworkTests",
            dependencies: ["Network"]),
    ]
)
