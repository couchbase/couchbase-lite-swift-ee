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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.4.0/couchbase-lite-swift_xc_enterprise_3.4.0.zip",
            checksum: "d6548852823ce4b887e42a6d81e1a072c227e2eca7f686d1d94cb7de438d6ea7"
        )
    ]
)
