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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.0.1/couchbase-lite-swift_xc_enterprise_3.0.1.zip",
            checksum: "52716ed4075363800c22b1a21608f1fe1a78ea999ec49c3488cfafd507ff5cef"
        ),
        .testTarget(
            name: "CouchbaseLiteSwiftTests",
            dependencies: ["CouchbaseLiteSwift"]
        )
    ]
)
