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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.4.2/couchbase-lite-swift_xc_enterprise_3.4.2.zip",
            checksum: "d4a6a4e22ba2c4117b6c19c58b0c0ab158210a9d8baa990585f49822ba168edc"
        )
    ]
)
