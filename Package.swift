// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RangesSPM",
    platforms: [.iOS(.v17),],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RangesSPM",
            targets: ["RangesSPM"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", "4.9.1"..<"6.0.0"),
//        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.1"),
//                .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
        ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RangesSPM",
            dependencies: [.product(name: "Alamofire", package: "Alamofire")]
        ),

    ]
)
