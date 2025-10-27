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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/4.0.0/couchbase-lite-swift_xc_enterprise_4.0.0.zip",
            checksum: "03fe05249bb8362dd2d648facec9eccc0a0445af3cead20e6207e73bd7f7806d"
        )
    ]
)
