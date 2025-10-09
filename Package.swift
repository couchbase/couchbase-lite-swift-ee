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
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.3.0/couchbase-lite-swift_xc_enterprise_3.3.0.zip",
            checksum: "d397a6559be53ac55147bbc486c49d74597d4544270806c46d062d58fa633327"
        )
    ]
)
