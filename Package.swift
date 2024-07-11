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
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalUIKitPackage.git", exact: "1.0.0"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalAPIKit.git", exact: "1.0.1"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalConfiguration.git", exact: "1.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalKB", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalKB/3.0.13/ZohoDeskPortalKB.zip", checksum: "37c71747d782f9c1673ddaf52897e3e63fb7037738421321bcbdfe1076cbb961"),
        .target(name: "ZohoDeskPortalKBPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalUIKitPackage", package: "ZohoDeskPortalUIKitPackage"),
                .product(name: "ZohoDeskPortalAPIKit", package: "ZohoDeskPortalAPIKit"),
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
