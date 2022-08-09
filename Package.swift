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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.0.2/couchbase-lite-swift_xc_enterprise_3.0.2.zip",
            checksum: "0b02e68a4ee0ef78323a8a7ef33c9d3f98226770e5938fd969ac526e0c7bbd21"
        ),
        .testTarget(
            name: "CouchbaseLiteSwiftTests",
            dependencies: ["CouchbaseLiteSwift"]
        )
    ]
)
