//
//  ViewController.swift
//  Spring Animation
//
//  Created by Aleksei Voronovskii on 1/20/23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var demoView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var repeatButton: UIButton!
    
    //MARK: - Private properties
    var preset: AnimationPreset!
    var curve: AnimationCurve!
    var force: CGFloat!
    var duration: CGFloat!
    var delay: CGFloat!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demoView.layer.cornerRadius = 10
    }
    
    // MARK: - IBActions
    @IBAction func runButtonPressed() {
        setParameters()
        setLabels()
        sendParamsToView()
        demoView.animate()
        repeatButton.isHidden = false
    }

    @IBAction func repeatButtonPressed() {
        sendParamsToView()
        demoView.animate()
    }
    
    // MARK: - Private methods
    private func setParameters() {
        preset = AnimationPreset.allCases.randomElement() ?? .pop
        curve = AnimationCurve.allCases.randomElement() ?? .easeIn
        force = CGFloat.random(in: 1...1.5)
        duration = CGFloat.random(in: 0.5...2)
        delay = CGFloat.random(in: 0...1)
    }
    
    private func setLabels() {
        presetLabel.text = "preset: \(preset.rawValue)"
        curveLabel.text = "curve: \(curve.rawValue)"
        forceLabel.text = String(format: "force: %.2f", force)
        durationLabel.text = String(format: "duration:  %.2f", duration)
        delayLabel.text = String(format: "delay:  %.2f", delay)
    }
    
    private func sendParamsToView() {
        demoView.animation = preset.rawValue
        demoView.curve = curve.rawValue
        demoView.force = force
        demoView.duration = duration
        demoView.delay = delay
    }
}

