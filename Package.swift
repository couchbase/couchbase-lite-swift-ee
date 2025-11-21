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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/4.0.1/couchbase-lite-swift_xc_enterprise_4.0.1.zip",
            checksum: "6d7a5a6134629e56faed45caa5d55989fb5c3c102e7d60069aef421412d7e694"
        )
    ]
)
