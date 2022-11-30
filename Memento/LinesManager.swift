//
//  LinesManager.swift
//  Memento
//
//  Created by Sergei Poluboiarinov on 2022-11-30.
//

import UIKit

class LinesManager {
    static let shared = LinesManager() //singleton
    
    var linesArray = [LineModel]()
    
    func save() -> StateLinesMemento {
        return StateLinesMemento(lines: self.linesArray)
    }
    
    func load(state: StateLinesMemento) {
        self.linesArray = state.linesArray
    }
    
    func printLines(in view: UIView) {
        for v in view.layer.sublayers! {
            v.removeFromSuperlayer()
        }
        
        for line in linesArray {
            let path = UIBezierPath()
            path.move(to: line.start)
            path.addLine(to: line.end)
            drawShapeLayer(path, line.color, view)
            drawShapeLayer(path, line.color, view)
        }
    }
    
    private func drawShapeLayer(_ path: UIBezierPath, _ lineColor: UIColor, _ view: UIView) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(shapeLayer)
        view.setNeedsDisplay()
    }
}
