//
//  Double.swift
//  Sky
//
//  Created by pxl on 2018/9/26.
//  Copyright © 2018年 Mars. All rights reserved.
//

import Foundation

extension Double {
    func toCelcius() -> Double {
        return (self - 32.0) / 1.8
    }
}

