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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/4.1.0/couchbase-lite-swift_xc_enterprise_4.1.0.zip",
            checksum: "55227d6ab1f73f69dc6d4c4bd40ed443a14a0d8255bad2ddd2dadd2ccbc9c2ac"
        )
    ]
)
