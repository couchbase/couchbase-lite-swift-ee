// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v9), .macOS(.v10_11)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.0.0/couchbase-lite-swift_xc_enterprise_3.0.0.zip",
            checksum: "328ec07257db6de8754c01d7a3504395957cbe2aa543317002d798bf6e7281f7"
        ),
        .testTarget(
            name: "CouchbaseLiteSwiftTests",
            dependencies: ["CouchbaseLiteSwift"]
        )
    ]
)
