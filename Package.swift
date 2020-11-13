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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/2.8.1/couchbase-lite-swift_xc_enterprise_2.8.1.zip",
            checksum: "e43568f03a67f796231144878e0bba5aa5c4d8ae0c0a39a795a2289fa1840530"
        )
    ]
)
