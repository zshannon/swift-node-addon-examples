// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Notifications",
    products: [
        .library(name: "Notifications", type: .dynamic, targets: ["Notifications"]),
    ],
    dependencies: [
        .package(url: "https://github.com/LinusU/swift-napi-bindings", from: "1.0.0-alpha.1"),
    ],
    targets: [
        .target(name: "Trampoline", dependencies: ["NAPIC"]),
        .target(name: "Notifications", dependencies: ["NAPI", "Trampoline"]),
    ]
)
