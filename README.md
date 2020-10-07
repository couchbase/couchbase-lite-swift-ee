# CouchbaseLiteSwift-EE

Repository for hosting Swift package for Couchbase Lite Swift Enterprise Edition


## Usage 
Adding CouchbaseLiteSwift dependency to your Parent swift package.

1. Add the CouchbaseLiteSwift package as dependency: 
```
dependencies: [
        .package(name: "CouchbaseLiteSwift",
                 url: "https://github.com/couchbase/couchbase-lite-swift-ee.git", 
                 from: "2.8.0"),
    ],
```

2. Add the dependent package product name, to the target: 
```
targets: [
     .target(name: "ParentPackage",
             dependencies: ["CouchbaseLiteSwift"]),
    ]

```
3. Import CouchbaseLiteSwift, and use it: 
```
import CouchbaseLiteSwift 

class ParentPackageSomeClass {
    func someFunction() {
        let db = try! Database(name: "testdb")
        print(">> opening the db: \(db.name)")
    }
}

```

## Sample Manifest file 
```
// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ParentPackage",
    products: [
        .library(
            name: "ParentPackage",
            targets: ["ParentPackage"]),
    ],
    dependencies: [
        .package(name: "CouchbaseLiteSwift",
                 url: "https://github.com/couchbase/couchbase-lite-swift-ee.git", from: "2.8.0"),
    ],
    targets: [
        .target(
            name: "ParentPackage",
            dependencies: ["CouchbaseLiteSwift"]),
        .testTarget(
            name: "ParentPackageTests",
            dependencies: ["ParentPackage"]),
    ]
)
```
