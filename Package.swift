// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v11), .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.1.9/couchbase-lite-swift_xc_enterprise_3.1.9.zip",
            checksum: "23c0b65eeffe25e2ba09fb957d5363042f4053663cb57cce2a0582b3edf06eaa"
        )
    ]
)
