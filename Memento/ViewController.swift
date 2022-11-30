//
//  ViewController.swift
//  Memento
//
//  Created by Sergei Poluboiarinov on 2022-11-30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewBoard: DrawView!
    
    var carriarState: CarrierState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBoard.lineColor = UIColor.black
        
        let lines = LinesManager.shared
        carriarState = CarrierState(linesManager: lines)
    }

    @IBAction func saveAction(_ sender: Any) {
        carriarState.saveLine()
    }
    
    @IBAction func loadAction(_ sender: Any) {
        carriarState.loadLine()
        carriarState.linesManager.printLines(in: viewBoard)
    }
    
    @IBAction func coralAction(_ sender: Any) {
        viewBoard.lineColor = UIColor.cyan
    }
    
    @IBAction func blueAction(_ sender: Any) {
        viewBoard.lineColor = UIColor.blue
    }
    
    @IBAction func orangeAction(_ sender: Any) {
        viewBoard.lineColor = UIColor.orange
    }
}

