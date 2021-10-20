// swift-tools-version:5.4.2
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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.0.0-beta02/couchbase-lite-swift_xc_enterprise_3.0.0-beta02.zip",
            checksum: "6205583fc6d274aeafee0c51cc48f1e3e1dd4b00db88ea9aa02345d2ecaa65b5"
        )
    ]
)
