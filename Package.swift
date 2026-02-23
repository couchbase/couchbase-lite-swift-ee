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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.3.2/couchbase-lite-swift_xc_enterprise_3.3.2.zip",
            checksum: "36b2bff81c24a0923cf616b201229c8cf01f933505a43013b27c00e4f3013442"
        )
    ]
)
