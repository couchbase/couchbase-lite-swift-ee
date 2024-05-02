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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.1.7/couchbase-lite-swift_xc_enterprise_3.1.7.zip",
            checksum: "38bf2d1fc96b652811e0727a9ea3d6c6005a7550fdc51e29db770f5eab8f2a0b"
        )
    ]
)
