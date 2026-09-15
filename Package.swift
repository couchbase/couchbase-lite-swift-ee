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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/4.1.2/couchbase-lite-swift_xc_enterprise_4.1.2.zip",
            checksum: "3c582d98379b3fc542d801ad059cada46bcef47cfa7a44ba47f2a3d2f5a32fb0"
        )
    ]
)
