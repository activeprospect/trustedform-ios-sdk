// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TrustedFormPackage",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TrustedFormPackage",
            targets: [
                "TrustedFormPackage",
                "TrustedFormSwift"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TrustedFormPackage",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .target(name: "TrustedFormSwift", condition: .when(platforms: [.iOS]))
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "TrustedFormSwift",
            path: "TrustedFormSwift.xcframework"
        )
    ]
)
