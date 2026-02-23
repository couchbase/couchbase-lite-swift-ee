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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/4.0.3/couchbase-lite-swift_xc_enterprise_4.0.3.zip",
            checksum: "adddbf33d89e514918541b472eae34f776ca7ca65b5f692c78fafb8a56b36104"
        )
    ]
)
