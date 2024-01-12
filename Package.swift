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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.1.4/couchbase-lite-swift_xc_enterprise_3.1.4.zip",
            checksum: "38cde970d32549515c2d3e91c6f87b85ed11c33d12cbd6ef27d2b0b231732eb9"
        )
    ]
)
