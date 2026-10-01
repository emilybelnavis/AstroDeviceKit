// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "AstroDeviceKit",
    platforms: [.macOS(.v27)],
    products: [
        .library(name: "AstroDeviceKit", targets: ["AstroDeviceKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/emilybelnavis/AstroCore.git", branch: "main"),
        .package(url: "https://github.com/emilybelnavis/INDIKit.git", branch: "main")
    ],
    targets: [
        .target(
            name: "AstroDeviceKit",
            dependencies: [
                .product(name: "AstroCore", package: "AstroCore"),
                .product(name: "INDIKit", package: "INDIKit")
            ]
        ),
        .testTarget(name: "AstroDeviceKitTests", dependencies: ["AstroDeviceKit"])
    ]
)
