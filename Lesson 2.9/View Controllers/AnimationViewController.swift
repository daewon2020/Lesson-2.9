//
//  ViewController.swift
//  Lesson 2.9
//
//  Created by Kostya on 31.03.2022.
//

import Spring
import CoreGraphics

class AnimationViewController: UIViewController {

    @IBOutlet var springImageView: SpringImageView!
    @IBOutlet var animationButton: UIButton!
    @IBOutlet var animationNameLabel: SpringLabel!
    @IBOutlet var curveNameLabel: SpringLabel!
    @IBOutlet var durationLabel: SpringLabel!
    @IBOutlet var forceLabel: SpringLabel!
    
    
    private var nextAnimation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAnimationInfo()
    }

    @IBAction func randomAnimationButton() {
        setAnimationProperties()
        springImageView.animate()
        setAnimationInfo()
    }
}

//MARK: - Private methods
extension AnimationViewController {
    private func setAnimationProperties() {
        springImageView.animation = nextAnimation.animationName
        springImageView.curve = nextAnimation.animationCurve
        springImageView.duration = CGFloat(nextAnimation.duration)
        springImageView.force = CGFloat(nextAnimation.force)
    }
    
    private func setAnimationInfo() {
        nextAnimation = Animation.getAnimation()
        let name = nextAnimation.animationName
        let curve = nextAnimation.animationCurve
        let force = String(format: "%.2f", springImageView.force)
        let duration = String(format: "%.2f", springImageView.duration)
        
        animationNameLabel.text = "Animation name: \(name)"
        curveNameLabel.text = "Curve: \(curve)"
        durationLabel.text = "Duration: \(duration)"
        forceLabel.text = "Force: \(force)"
        
        animateButton(animation: .pop, delay: 0, duration: 0.8, sender: animationNameLabel)
        animateButton(animation: .pop, delay: 0.2, duration: 0.8, sender: curveNameLabel)
        animateButton(animation: .pop, delay: 0.4, duration: 0.8, sender: durationLabel)
        animateButton(animation: .pop, delay: 0.6, duration: 0.8, sender: forceLabel)
        
        animationButton.setTitle("Run " + name, for: .normal)
    }
    
    private func animateButton(
        animation: AnimationPreset,
        delay: CGFloat,
        duration: CGFloat,
        sender: SpringLabel
    ) {
        sender.animation = animation.rawValue
        sender.duration = duration
        sender.delay = delay
        sender.animate()
    }
    
}
