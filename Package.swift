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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.1.0/couchbase-lite-swift_xc_enterprise_3.1.0.zip",
            checksum: "e56a7a6f4264a88c8f155c64bc1c396ec7cabff18a7402b3aea6665ee313564d"
        ),
        .testTarget(
            name: "CouchbaseLiteSwiftTests",
            dependencies: ["CouchbaseLiteSwift"]
        )
    ]
)
