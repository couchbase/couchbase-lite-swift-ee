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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.2.4/couchbase-lite-swift_xc_enterprise_3.2.4.zip",
            checksum: "a29e08e9d155a3b7181fb89b32c86da0918b0ae8e59ac1bd7508779123e76387"
        )
    ]
)
