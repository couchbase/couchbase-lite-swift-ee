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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/4.0.2/couchbase-lite-swift_xc_enterprise_4.0.2.zip",
            checksum: "c48d1be344dba0354c9006a2af4de805f7d52cfb3e943c6dd005f72703d9bd86"
        )
    ]
)
