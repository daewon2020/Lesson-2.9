//
//  Model.swift
//  Lesson 2.9
//
//  Created by Kostya on 31.03.2022.
//

import Foundation

struct Animation {
    let animationName: String
    let animationCurve: String
    let duration: Float
    let force: Float
    
    static func getAnimation() -> Animation{
        let name = AnimationPreset.allCases.randomElement()
        let curve = AnimationCurve.allCases.randomElement()
        let animation = Animation(
            animationName: name?.rawValue ?? "slideLeft",
            animationCurve: curve?.rawValue ?? "easeIn",
            duration: Float.random(in: 0.5...2.5),
            force: Float.random(in: 0.1...1)
        )
        return animation
    }
}

enum AnimationCurve: String, CaseIterable {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInSine
    case easeOutSine
    case easeInOutSine
    case easeInQuad
    case easeOutQuad
    case easeInOutQuad
    case easeInCubic
    case easeOutCubic
    case easeInOutCubic
    case easeInQuart
    case easeOutQuart
    case easeInOutQuart
    case easeInQuint
    case easeOutQuint
    case easeInOutQuint
    case easeInExpo
    case easeOutExpo
    case easeInOutExpo
    case easeInCirc
    case easeOutCirc
    case easeInOutCirc
    case easeInBack
    case easeOutBack
    case easeInOutBack
}

enum AnimationPreset: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}

