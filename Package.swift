// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v15), .macOS(.v13)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.3.3/couchbase-lite-swift_xc_enterprise_3.3.3.zip",
            checksum: "2c61c0d3bfbe8d62609e29b26e2d66b923c4ac01d462f62516b783a2e9efa5a5"
        )
    ]
)
