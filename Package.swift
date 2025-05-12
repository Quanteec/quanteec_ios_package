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
        // Define dependencies if needed
        .package(url: "https://github.com/yene/GCDWebServer.git", exact: "3.5.7")
        ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
                    name: "QuanteecPlugin",
                    path: "Frameworks/QuanteecPlugin.xcframework"
                ),
        .binaryTarget(
                    name: "datachannel_wrapper",
                    path: "Frameworks/datachannel_wrapper.xcframework"
                ),
        .target(
            name: "quanteec_plugin_package",
            dependencies: [
                "GCDWebServer",
                "QuanteecPlugin",
                "datachannel_wrapper"
            ]
        ),
    ],
    swiftLanguageModes: [.v5]
)
