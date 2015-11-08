
import XCTest

// Apple Swift version 2.0

class AllergiesTest: XCTestCase {
    
    func testBob() {
        
        
        XCTAssertTrue(Allergies.hasAllergy(34,testAgainst: .peanuts), "Bob is allergic to peanuts")
        XCTAssertTrue(Allergies.hasAllergy(34, testAgainst: .chocolate), "Bob is allergic to chocolate")
        XCTAssertFalse(Allergies.hasAllergy(34,testAgainst: .cats),  "Bob is not allergic to cats")
    }
    
    func testEggsNcats() {


        XCTAssertTrue(Allergies.hasAllergy(129, testAgainst: .eggs))
        XCTAssertTrue(Allergies.hasAllergy(129, testAgainst: .cats))
        XCTAssertFalse(Allergies.hasAllergy(129, testAgainst: .chocolate))
    }


    func testNone() {
        
        XCTAssertFalse(Allergies.hasAllergy(0,testAgainst: .Pollen))
    }
    
    func testAll() {
        
        let allInt =  UInt(Array(0...7).reduce(0){ return ($0 | (1 << $1)) })
        
        XCTAssertTrue(Allergies.hasAllergy(allInt,testAgainst: .eggs))
        XCTAssertTrue(Allergies.hasAllergy(allInt,testAgainst: .peanuts))
        XCTAssertTrue(Allergies.hasAllergy(allInt,testAgainst: .shellfish))
        XCTAssertTrue(Allergies.hasAllergy(allInt,testAgainst: .strawberries))
        XCTAssertTrue(Allergies.hasAllergy(allInt,testAgainst: .tomatoes))
        XCTAssertTrue(Allergies.hasAllergy(allInt,testAgainst: .chocolate))
        XCTAssertTrue(Allergies.hasAllergy(allInt,testAgainst: .pollen))
        XCTAssertTrue(Allergies.hasAllergy(allInt,testAgainst: .cats))
        
    }
}
