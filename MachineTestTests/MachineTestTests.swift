//
//  MachineTestTests.swift
//  MachineTestTests
//
//  Created by Mounika Madishetti on 27/08/21.
//

import XCTest
@testable import MachineTest
class MachineTestTests: XCTestCase {
    var vc: ViewController? = nil
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        vc = ViewController()
        vc?.vm = NewsListViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssertNotNil(vc?.vm)
        XCTAssertNotNil(vc?.vm.getAPIResponse { i in})
        XCTAssertNil(vc?.articles[0].source)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
