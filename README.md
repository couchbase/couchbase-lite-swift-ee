# CouchbaseLiteSwift-EE

Repository for hosting Swift package for Couchbase Lite Swift Enterprise Edition


## Usage 
For your host app to use the CouchbaseLiteSwift, 

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
     .target(name: "HostApp",
             dependencies: ["CouchbaseLiteSwift"]),
    ]

```
3. Import CouchbaseLiteSwift, and use it. 
```
import CouchbaseLiteSwift 

class HostAppSomeClass {
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
    name: "HostApp",
    products: [
        .library(
            name: "HostApp",
            targets: ["HostApp"]),
    ],
    dependencies: [
        .package(name: "CouchbaseLiteSwift",
                 url: "https://github.com/couchbase/couchbase-lite-swift-ee.git", from: "2.8.0"),
    ],
    targets: [
        .target(
            name: "HostApp",
            dependencies: ["CouchbaseLiteSwift"]),
        .testTarget(
            name: "HostAppTests",
            dependencies: ["HostApp"]),
    ]
)
```
