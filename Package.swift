// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// https://developer.apple.com/documentation/xcode/creating_a_standalone_swift_package_with_xcode?language=objc

import PackageDescription

let CliftyCoreSDK = Package(
    name: "Clifty Core SDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "CliftyCore",
            targets: ["CliftyCore"])
    ],
    targets: [
        .binaryTarget(
            name: "CliftyCore",
            path: "CliftyCore.xcframework"
        )
    ]
)
