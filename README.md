# CouchbaseLiteSwift-EE

Repository for hosting Swift package for Couchbase Lite Swift Enterprise Edition

## Case 1. Including Couchbase Lite to an existing swift package
Adding CouchbaseLiteSwift dependency to your Parent swift package.

1. Add the CouchbaseLiteSwift package as dependency: 
```
dependencies: [
        .package(name: "CouchbaseLiteSwift",
                 url: "https://github.com/couchbase/couchbase-lite-swift-ee.git", 
                 from: "3.0.15"),
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

### Sample Manifest file 
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
                 url: "https://github.com/couchbase/couchbase-lite-swift-ee.git", from: "3.0.15"),
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

## Case 2.  Including Couchbase Lite directly to your app project

Add CouchbaseLiteSwift to your HostApp

1. Project to which you are going to add the CouchbaseLiteSwift
<img width="1376" alt="1" src="https://user-images.githubusercontent.com/10448770/95389576-e2f27300-08a8-11eb-9aed-8946199f07d0.png">

2. Click on the add package dependency button, (Xcode Project File > Project Settings > Swift Packages > Add Package Dependency)
<img width="1377" alt="2" src="https://user-images.githubusercontent.com/10448770/95389583-e4bc3680-08a8-11eb-9a1a-77385fa27ca6.png">

3. Enter the URL, `https://github.com/couchbase/couchbase-lite-swift-ee.git`
<img width="1377" alt="3" src="https://user-images.githubusercontent.com/10448770/95389586-e5ed6380-08a8-11eb-86f3-0b999876e05a.png">

4. Specify the version
<img width="1377" alt="4" src="https://user-images.githubusercontent.com/10448770/95389591-e7b72700-08a8-11eb-997c-fc4ee8a5bb93.png">

5. Finish
<img width="1374" alt="5" src="https://user-images.githubusercontent.com/10448770/95389598-e980ea80-08a8-11eb-84e7-1241149cdeac.png">

6. You will see the name, version and URL of the added CouchbaseLiteSwift Package
<img width="1375" alt="6" src="https://user-images.githubusercontent.com/10448770/95389601-eb4aae00-08a8-11eb-90a1-d7b2d76c5d00.png">

7. Import CouchbaseLiteSwift, and use it. 
<img width="1376" alt="7" src="https://user-images.githubusercontent.com/10448770/95389606-ec7bdb00-08a8-11eb-8907-6b6651ac5526.png">
