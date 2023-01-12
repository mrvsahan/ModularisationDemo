// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TrackDetails",
    platforms: [ .iOS(.v14) ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TrackDetails",
            targets: ["TrackDetails"]),

        .library(name: "TrackDetailsInterface",
                 type: .static,
                 targets: ["TrackDetailsInterface"]),
    ],
    dependencies: [
        .package(path: "../DependencyKit"),
        .package(path: "../Common")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TrackDetails",
            dependencies: ["DependencyKit",
                           "TrackDetailsInterface",
                           "Common"]),
        .target(
            name: "TrackDetailsInterface",
            dependencies: ["Common"]),
    ]
)
