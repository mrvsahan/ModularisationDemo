// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SearchListDomain",
    platforms: [ .iOS(.v14) ],
    products: [
        .library(
            name: "SearchListDomainInterface",
            targets: ["SearchListDomainInterface"]),
        .library(
            name: "SearchListDomain",
            targets: ["SearchListDomain"]),
        .library(
            name: "SearchListUI",
            targets: ["SearchListUI"]),
    ],
    dependencies: [
        .package(path: "../Network"),
        .package(path: "../UIComponent"),
        .package(path: "../DependencyKit"),
        .package(path: "../Common")
    ],
    targets: [
        .target(
            name: "SearchListDomain",
            dependencies: [
                "SearchListDomainInterface"
            ]),
        .target(
            name: "SearchListDomainInterface",
            dependencies: [
                "Network"
            ]),
        .target(
            name: "SearchListUI",
            dependencies: [
                "UIComponent",
                "DependencyKit",
                "SearchListDomain",
                "Common"
            ]),
        .testTarget(
            name: "SearchListDomainTests",
            dependencies: [
                "SearchListDomainInterface",
                           "SearchListDomain"
            ]),
    ]
)
