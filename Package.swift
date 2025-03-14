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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.2.2/couchbase-lite-swift_xc_enterprise_3.2.2.zip",
            checksum: "bde136d4b966bdc3e33456b9a45db22d93d2b3c4a47dfb521cd5daa7aa4f1708"
        )
    ]
)
