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
    
    private var td = TodoViewModel()
    
    func testTransformedDatasource() {
        
        let mockDataSource = ["Jerry"]
        
        td.datasource = mockDataSource
        
        let transformedData = td.transformedDatasource()
        
        print(transformedData)
        XCTAssert(transformedData.contains("Jerry:"))
    }
    
}
