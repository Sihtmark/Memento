//
//  StateLinesMemento.swift
//  Memento
//
//  Created by Sergei Poluboiarinov on 2022-11-30.
//

import Foundation

class StateLinesMemento {
    var linesArray: [LineModel]
    
    init(lines: [LineModel]) {
        self.linesArray = lines
    }
}
