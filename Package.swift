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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.2.0-beta.2/couchbase-lite-swift_xc_enterprise_3.2.0-beta.2.zip",
            checksum: "36b8e221e997e2721bc41833d78caf9cd16c780cc0a7ff78a655a901cde62d4f"
        )
    ]
)
