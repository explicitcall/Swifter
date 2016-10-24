//
//  NSData+OAuthSwift.swift
//  OAuthSwift
//
//  Created by Dongri Jin on 1/28/15.
//  Copyright (c) 2015 Dongri Jin. All rights reserved.
//

import Foundation


extension Data {

    var rawBytes: [UInt8] {
        let count = self.count / MemoryLayout<UInt8>.size
        return withUnsafeBytes {
          [UInt8](UnsafeBufferPointer(start: $0, count: count))
        }
    }

    init(bytes: [UInt8]) {
        self.init(bytes: UnsafePointer<UInt8>(bytes), count: bytes.count)
    }

    mutating func append(_ bytes: [UInt8]) {
        self.append(UnsafePointer<UInt8>(bytes), count: bytes.count)
    }

}
