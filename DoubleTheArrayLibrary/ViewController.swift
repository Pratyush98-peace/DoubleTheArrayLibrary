//
//  ViewController.swift
//  DoubleTheArrayLibrary
//
//  Created by Lokesh Bhansali on 31/03/23.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var array: [Float] = [2.0,3,0,4,0,6.0]
        var res: [Float] = doubleThisArray(array: array)
        for i in 0..<res.count {
            print(res[i])
        }
    }
    
    public func doubleThisArray(array: [Float]) -> [Float] {
        let count = UInt32(array.count)
        let resultPtr = doubleArray(array, count)
        defer { free(resultPtr) }
        let resultBuffer = UnsafeBufferPointer(start: resultPtr, count: Int(count))
        let resultArray = Array(resultBuffer)
        return resultArray
    }
}

