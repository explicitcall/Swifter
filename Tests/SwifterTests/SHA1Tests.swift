//
//  SHA1Tests.swift
//  Swifter
//
//  Created by Max Desiatov on 24/10/2016.
//  Copyright © 2016 Matt Donnelly. All rights reserved.
//

import XCTest

#if os(Linux)
@testable import Swifter
#elseif os(iOS)
@testable import SwifteriOS
#elseif os(macOS)
@testable import SwifterMac
#endif

class SHA1Tests: XCTestCase {
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.

  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testCalculate() {
    let input = "test input".data(using: .utf8)!

    let sha1 = SHA1(message: input)
    let result = sha1.calculate()

    XCTAssertEqual(result.base64EncodedString(), "SYg7NOWg9IIk3WIw9HHp3Bvb6vU=")
  }

  static var allTests = [
      ("testCalculate", testCalculate),
      // Other tests go here
    ]
}
