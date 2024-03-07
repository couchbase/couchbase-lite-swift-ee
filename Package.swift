// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v11), .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.1.6/couchbase-lite-swift_xc_enterprise_3.1.6.zip",
            checksum: "c5e870fa7ba491293bcf405d3da94b945d2c23aa63e683b4b61841435a9c332e"
        )
    ]
)
