//
//  DrawView.swift
//  ClassificationSample
//
//  Created by Takuto Nakamura on 2019/02/27.
//  Copyright © 2019 Takuto Nakamura. All rights reserved.
//

import Cocoa

protocol DrawViewDelegate: AnyObject {
    func finishedStroke(_ data: [Double])
}

class DrawView: NSView {

    private var points = [CGPoint]()
    public weak var delegate: DrawViewDelegate?
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        self.wantsLayer = true
        self.layer?.backgroundColor = CGColor.white
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        let w = self.frame.width
        let h = self.frame.height
        
        for point in points {
            let rect = NSBezierPath(rect: NSRect(x: w / CGFloat(GRID) * CGFloat(point.x),
                                                 y: h / CGFloat(GRID) * CGFloat(point.y),
                                                 width: w / CGFloat(GRID),
                                                 height: h / CGFloat(GRID)))
            NSColor.black.withAlphaComponent(0.7).setFill()
            rect.fill()
        }
        
        let path = NSBezierPath()
        path.lineWidth = 1
        path.lineCapStyle = NSBezierPath.LineCapStyle.round
        NSColor.lightGray.setStroke()
        for i in (1 ..< GRID) {
            path.move(to: NSPoint(x: w / CGFloat(GRID) * CGFloat(i), y: 0))
            path.line(to: NSPoint(x: w / CGFloat(GRID) * CGFloat(i), y: h))
            path.stroke()
            path.removeAllPoints()
        }
        for i in (1 ..< GRID) {
            path.move(to: NSPoint(x: 0, y: h / CGFloat(GRID) * CGFloat(i)))
            path.line(to: NSPoint(x: w, y: h / CGFloat(GRID) * CGFloat(i)))
            path.stroke()
            path.removeAllPoints()
        }
    }
    
    private func addPoint(_ point: CGPoint) {
        let floorX = Int(floorf(Float(GRID) * Float((point.x / bounds.size.width))))
        let floorY = Int(floorf(Float(GRID) * Float((point.y / bounds.size.height))))
        let posX: Int = max(min(floorX, GRID - 1), 0)
        let posY: Int = max(min(floorY, GRID - 1), 0)
        points.append(NSPoint(x: posX, y: posY))
        let orderedSet = NSOrderedSet(array: points)
        points = orderedSet.array as! [CGPoint]
    }
    
    override func mouseDown(with event: NSEvent) {
        points.removeAll()
        addPoint(event.locationInWindow - self.frame.origin)
        self.layer?.setNeedsDisplay()
    }
    
    override func mouseDragged(with event: NSEvent) {
        addPoint(event.locationInWindow - self.frame.origin)
        self.layer?.setNeedsDisplay()
    }
    
    override func mouseUp(with event: NSEvent) {
        var data = [Double](repeating: 0.0, count: GRID * GRID)
        points.forEach { (point) in
            data[GRID * Int(point.y) + Int(point.x)] = 1.0
        }
        delegate?.finishedStroke(data)
    }
    
}
