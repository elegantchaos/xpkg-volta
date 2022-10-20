// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "xpkg-volta",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(name: "xpkg-volta-xpkg-hooks", targets: ["xpkg-volta-xpkg-hooks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/XPkgPackage", from:"1.0.5"),
    ],
    targets: [
        .target(
            name: "xpkg-volta-xpkg-hooks",
            dependencies: ["XPkgPackage"]),
    ]
)
