// swift-tools-version:5.0

import PackageDescription


let package = Package(
  name: "Spectre",
  products: [
    .library(name: "Spectre", targets: ["Spectre"]),
  ],
  targets: [
    .target(name: "Spectre", exclude: ["XCTest@4.swift"]),
    .testTarget(name: "SpectreTests", dependencies: ["Spectre"]),
  ],
  swiftLanguageVersions: [.v5]
)
