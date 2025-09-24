// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorIdnow",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorIdnow",
            targets: ["IdNowPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
        .package(url: "https://github.com/idnow/de.idnow.ios.sdk.spm", from: "main")
    ],
    targets: [
        .target(
            name: "IdNowPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
                .product(name: "IDnowSDK", package: "de.idnow.ios.sdk.spm")
            ],
            path: "ios/Sources/IdNowPlugin"),
        .testTarget(
            name: "IdNowPluginTests",
            dependencies: ["IdNowPlugin"],
            path: "ios/Tests/IdNowPluginTests")
    ]
)