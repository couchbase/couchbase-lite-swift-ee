// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v10), .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift",
            targets: ["CouchbaseLiteSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.0.12/couchbase-lite-swift_xc_enterprise_3.0.12.zip",
            checksum: "773aafaf819e9b00c1fa4d97de34bfb692921ccd99cae407a77292cef68f1c73"
        ),
        .testTarget(
            name: "CouchbaseLiteSwiftTests",
            dependencies: ["CouchbaseLiteSwift"]
        )
    ]
)
