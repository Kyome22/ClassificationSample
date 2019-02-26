//
//  Extensions.swift
//  ClassificationSample
//
//  Created by Takuto Nakamura on 2019/02/27.
//  Copyright © 2019 Takuto Nakamura. All rights reserved.
//

import Cocoa

func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

func += (left: inout CGPoint, right: CGPoint) {
    left = left + right
}

func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

func -= (left: inout CGPoint, right: CGPoint) {
    left = left - right
}

func * (left: CGFloat, right: CGPoint) -> CGPoint {
    return CGPoint(x: left * right.x, y: left * right.y)
}

func * (left: CGPoint, right: CGFloat) -> CGPoint {
    return CGPoint(x: right * left.x, y: right * left.y)
}

func *= (left: inout CGPoint, right: CGFloat) {
    left = left * right
}

// right == 0 の場合，そんなプログラムを書いたやつが悪い
func / (left: CGPoint, right: CGFloat) -> CGPoint {
    return CGPoint(x: left.x / right, y: left.y / right)
}

func /= (left: inout CGPoint, right: CGFloat) {
    left = left / right
}


