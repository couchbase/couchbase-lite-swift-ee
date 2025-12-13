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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.3.1/couchbase-lite-swift_xc_enterprise_3.3.1.zip",
            checksum: "d380607f126b79b3b27af32d42614a1c38ea6a96cf7f4f91a9de7ed1633b5871"
        )
    ]
)
