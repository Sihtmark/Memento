//
//  CarrierState.swift
//  Memento
//
//  Created by Sergei Poluboiarinov on 2022-11-30.
//

import Foundation

class CarrierState {
    var state: StateLinesMemento?
    var linesManager: LinesManager
    
    init(linesManager: LinesManager) {
        self.linesManager = linesManager
    }
    
    public func saveLine() {
        state = linesManager.save()
    }
    
    func loadLine() {
        guard state != nil else {return}
        linesManager.load(state: state!)
    }
}
