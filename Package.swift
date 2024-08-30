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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.2.0/couchbase-lite-swift_xc_enterprise_3.2.0.zip",
            checksum: "7437dcd1b4f3e9e6d9a009bd0ed40a6654d83361f187e9e7f461631e8e456d80"
        )
    ]
)
