import XCTest
@testable import CrackStation

final class CrackstationTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let startingPoint = Date()
        let object =  CrackStation()
        let decrypted = object.decrypt(shaHash: "77de68daecd823babbb58edb1c8e14d7106e83bb")
        XCTAssertEqual(decrypted, "3")
        print("\(startingPoint.timeIntervalSinceNow * -1) seconds elapsed")
    }
}
