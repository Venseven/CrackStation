import XCTest
@testable import CrackStation

final class CrackstationTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let object = try! CrackStation()
        let decrypted = object.decrypt(shaHash: "c63ae6dd4fc9f9dda66970e827d13f7c73fe841c")
        print(decrypted)
        XCTAssertEqual(decrypted, "M")
    }
}
