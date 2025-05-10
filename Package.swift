// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InternalSpotifyAPI",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "InternalSpotifyAPI",
            targets: ["InternalSpotifyAPI"]
        ),
    ],
    dependencies: [
        // packages
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0"),

        // plugins
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.59.1"),
    ],
    targets: [
        .target(
            name: "InternalSpotifyAPI",
            plugins: [.plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")]
        ),
        .testTarget(
            name: "InternalSpotifyAPITests",
            dependencies: ["InternalSpotifyAPI"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
