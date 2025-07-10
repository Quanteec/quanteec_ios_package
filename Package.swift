// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "quanteec_plugin_package",
    platforms: [
        .iOS(.v15), .tvOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "quanteec_plugin_package",
            targets: ["quanteec_plugin_package"])
    ],
    dependencies: [
        // No external dependencies
        ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
                    name: "QuanteecCore",
                    path: "Frameworks/QuanteecCore.xcframework"
                ),
        .binaryTarget(
                    name: "QuanteecPluginAVPlayer",
                    path: "Frameworks/QuanteecPluginAVPlayer.xcframework"
                ),
        .binaryTarget(
                    name: "datachannel_wrapper",
                    path: "Frameworks/datachannel_wrapper.xcframework"
                ),
        .target(
            name: "quanteec_plugin_package",
            dependencies: [
                "QuanteecCore",
                "QuanteecPluginAVPlayer",
                "datachannel_wrapper"
            ]
        ),
    ],
    swiftLanguageModes: [.v5]
)
