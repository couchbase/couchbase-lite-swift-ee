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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/4.0.4/couchbase-lite-swift_xc_enterprise_4.0.4.zip",
            checksum: "cbd0115b6afc5d15331dfa8783c5c70e7262a65fa277c11fedcec4ed0f634568"
        )
    ]
)
