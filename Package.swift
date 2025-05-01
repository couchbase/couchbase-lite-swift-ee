// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v12), .macOS(.v12)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.2.3/couchbase-lite-swift_xc_enterprise_3.2.3.zip",
            checksum: "8ecef18ad1aabf55607e525d0f56586b35a04a968cb18828252a22936d0d8176"
        )
    ]
)
