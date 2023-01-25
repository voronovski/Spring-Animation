//
//  ViewController.swift
//  Spring Animation
//
//  Created by Aleksei Voronovskii on 1/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var demoView: UIView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demoView.layer.cornerRadius = 10
        
    }

    @IBAction func runButtonPressed() {
    }
    
}

