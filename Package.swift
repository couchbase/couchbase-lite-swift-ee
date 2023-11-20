// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v11), .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.1.3/couchbase-lite-swift_xc_enterprise_3.1.3.zip",
            checksum: "bed9175f2cd87cc379f67a765c6a061f44ec41210a520faab4e4a8280c9bae17"
        )
    ]
)
