import XCTest
import CouchbaseLiteSwift

final class CouchbaseLiteSwiftTests: XCTestCase {
    
    let dbName = "release-verification"
    var db: Database!
    
    override func setUp() {
        try! Database.delete(withName: dbName, inDirectory: nil)
        
        db = try! Database(name: dbName, config: DatabaseConfiguration.init())
        NSLog("Database: %@", db.path!)
    }
    
    override func tearDown() {
        try! db.close()
        db = nil
    }
    
    func testSave() {
        let doc = MutableDocument()
        doc.setValue("Pasin", forKey: "firstname")
        doc.setValue("Suriyentrakorn", forKey: "lastname")
        
        let str = "CouchbaseLite 2.0"
        let data = str.data(using: .utf8)
        doc.setValue(Blob(contentType: "text/plain", data: data!), forKey: "blob")
        
        do {
            try db.saveDocument(doc)
            NSLog(">>>>>> Successfully saving the document");
        } catch let error as NSError {
            XCTFail("Error Saving Document \(error.localizedDescription)");
        }
        
        let query = QueryBuilder
            .select(SelectResult.expression(Meta.id))
            .from(DataSource.database(db))
            .where(Expression.property("firstname").is(Expression.string("Pasin")))
        
        let results = try! query.execute().allResults()
        XCTAssertEqual(results.count, 1)
    }
    
    func testDelete() {
        let doc = MutableDocument()
        doc.setValue("Pasin", forKey: "firstname")
        doc.setValue("Suriyentrakorn", forKey: "lastname")
        do {
            try db.saveDocument(doc)
            NSLog(">>>>>> Successfully saving the document");
            try db.deleteDocument(db.document(withID: doc.id)!)
            NSLog(">>>>>> Successfully deleted the document");
        } catch let error as NSError {
            XCTFail("Error Saving Document \(error.localizedDescription)");
        }
        
        let query = QueryBuilder
            .select(SelectResult.expression(Meta.id))
            .from(DataSource.database(db))
            .where(Expression.property("firstname").is(Expression.string("Pasin")))
        
        let results = try! query.execute().allResults()
        XCTAssertEqual(results.count, 0)
    }

    static var allTests = [
        ("testSave", testSave),
        ("testDelete", testDelete)
    ]
}
