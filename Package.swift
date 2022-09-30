// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// https://developer.apple.com/documentation/xcode/creating_a_standalone_swift_package_with_xcode?language=objc

import PackageDescription

let package = Package(
    name: "Clifty SDKs",
    platforms: [
        .iOS(.v11)
    ],
    dependencies: [
        .package(url: "https://github.com/WalletConnect/WalletConnectSwift.git", .upToNextMinor(from: "1.2.0"))
    ],
    products: [
        .library(
            name: "CliftyCore",
            targets: ["CliftyCore"]),
        .library(
            name: "CliftyNFTPicker",
            targets: ["CliftyNFTPicker"])
    ],
    targets: [
        .binaryTarget(
            name: "CliftyCore",
            path: "CliftyCore.xcframework"
        ),
        .binaryTarget(
            name: "CliftyNFTPicker",
            path: "CliftyNFTPicker.xcframework"
        )
    ]
)
