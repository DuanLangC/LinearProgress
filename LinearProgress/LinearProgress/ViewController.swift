//
//  ViewController.swift
//  LinearProgress
//
//  Created by Eldis on 2019/2/28.
//  Copyright © 2019 Eldis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var processView: LinearProgress!
    @IBOutlet weak var progressLabel: UILabel!
    private var progress: UInt8 = 0
    private var animationProgress: UInt8 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(ViewController.updateProgress), userInfo: nil, repeats: true)
        
        processView.progressChanged {
            (progress: Double, line: LinearProgress) in
            self.progressLabel.text = String.init(format: "%.2f", progress * 100.0) + "%"
        }
    }

    @objc private func updateProgress() {
        progress = progress &+ 1
        let normalizedProgress = Double(progress) / Double(UInt8.max)
        processView.progress = normalizedProgress
        
//        animationProgress = animationProgress &+ 50
//        let normalizedProgress = Double(animationProgress) / Double(UInt8.max)
//        processView.set(progress: normalizedProgress, duration: 0.75)
        
    }
}

