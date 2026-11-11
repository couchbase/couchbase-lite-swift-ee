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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/4.1.3/couchbase-lite-swift_xc_enterprise_4.1.3.zip",
            checksum: "3444e9ec768816bc78c286326c572080c84964c469b01379bb3b5fd58ad21615"
        )
    ]
)
