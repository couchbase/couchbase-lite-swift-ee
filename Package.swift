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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.2.6/couchbase-lite-swift_xc_enterprise_3.2.6.zip",
            checksum: "cf9b39f3ce9a21419bd05f66810b270e6e4cf97836adba16d1947333c60c71db"
        )
    ]
)
