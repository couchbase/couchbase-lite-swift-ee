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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.2.1/couchbase-lite-swift_xc_enterprise_3.2.1.zip",
            checksum: "0de4c631ee83c66f90b6f83af54dc43e699c71a1dc03868e551290e2c2e0cb70"
        )
    ]
)
