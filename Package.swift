// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZohoDeskPortalKBPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalKBPackage",
            targets: ["ZohoDeskPortalKBPackage", "ZohoDeskPortalKB"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalConfiguration.git", exact: "4.0.15")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalKB", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalKB/4.0.1/ZohoDeskPortalKB.zip", checksum: "e5dbb240bc2a2bb2f9ecc258d1886520bd27755f94235e1bd148a39cb36eeef3"),
        .target(name: "ZohoDeskPortalKBPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)

