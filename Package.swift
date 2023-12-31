// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Segment1Flow",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Segment1Flow",
            targets: ["Segment1Flow"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/1Flow-Inc/1flow-ios-sdk.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/segmentio/analytics-swift.git",
            from: "1.4.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Segment1Flow",
            dependencies: [
                .product(name: "_1Flow", package: "1flow-ios-sdk"),
                .product(name: "Segment", package: "analytics-swift")
            ])
    ]
)
