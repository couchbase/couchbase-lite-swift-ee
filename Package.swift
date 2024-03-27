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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.2.0-beta.1/couchbase-lite-swift_xc_enterprise_3.2.0-beta.1.zip",
            checksum: "29ed7376a75036cc89b0857383fef58b609ef0de24f661b749323d38b03591a0"
        )
    ]
)
