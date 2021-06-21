// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OrzOpenCV",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OrzOpenCV",
            targets: ["OrzOpenCV"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "OrzOpenCV",
            url: "https://download.jokerhub.cn/OrzOpenCV.xcframework.zip",
            checksum: "6d419adba60d5b877b492241e815ee93c6bafed19c9a446956bf712d514127d8"),
    ]
)
