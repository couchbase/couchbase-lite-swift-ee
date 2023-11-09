// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v10), .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.0.15/couchbase-lite-swift_xc_enterprise_3.0.15.zip",
            checksum: "0e43072dc065540fd14a6e5aad74fa914d267e5fbf5851e5180a2e7d9dc18ae8"
        )
    ]
)
