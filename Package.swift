// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HaruKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HaruKit",
            targets: ["HaruKit"]),
    ],
    targets: [
        .target(
            name: "HaruKit",
            path: "Sources/HaruKit",
            resources: [
                .process("Foundation/Typography/Font")
            ]
        ),
    ]
)
