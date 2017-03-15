//
//  XTests.swift
//  Todo
//
//  Created by Jabari Bell on 3/9/17.
//  Copyright © 2017 ustwo. All rights reserved.
//

import XCTest

@testable import Todo //DONT FORGET



class XTests: XCTestCase {
    
    let td = TodoViewModel()
    
    func testTransformedData() {
        
        let s = td.transformedDatasource("Jerry")
        
        XCTAssert(s[0] == "Jerry:")
    }
    
}
