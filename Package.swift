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
            url: "https://packages.couchbase.com/releases/couchbase-sync-gateway/2.8.0/couchbase-sync-gateway-enterprise_2.8.0_x86_64.zip",
            checksum: "5a9d9c8d0423f64ca7b3512f1da7ca572193f8c365aee2dc47cb47beb5632c41"
        )
    ]
)
