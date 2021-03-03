// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v9), .macOS(.v10_11)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/2.8.4/couchbase-lite-swift_xc_enterprise_2.8.4.zip",
            checksum: "1d5dad3f41828f87fec3cbd4d44531b143d11a235d52826cf225d1f9ca2f93a4"
        )
    ]
)
