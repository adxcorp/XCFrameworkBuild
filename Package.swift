// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XCFrameworkBuild",
    products: [
    .executable(name: "xcbuild", targets: ["XCFrameworkBuild"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "packages/SwiftShell"),
        .package(path: "packages/Commander"),
        .package(path: "packages/Swiftline"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "XCFrameworkBuild",
            dependencies: ["SwiftShell","Commander", "Swiftline"]),
        .testTarget(
            name: "XCFrameworkBuildTests",
            dependencies: ["XCFrameworkBuild"]),
    ]
)
