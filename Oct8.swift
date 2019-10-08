import UIKit
import CoreHaptics

var engine: CHHapticEngine?

guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }

do {
    engine = try CHHapticEngine()
    try engine?.start()
} catch {
    print("There was an error creating the engine: \(error.localizedDescription)")
}

// create a dull, strong haptic
let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)

// create a curve that fades from 1 to 0 over one second
let start = CHHapticParameterCurve.ControlPoint(relativeTime: 0, value: 1)
let end = CHHapticParameterCurve.ControlPoint(relativeTime: 1, value: 0)

// use that curve to control the haptic strength
let parameter = CHHapticParameterCurve(parameterID: .hapticIntensityControl, controlPoints: [start, end], relativeTime: 0)

// create a continuous haptic event starting immediately and lasting one second
let event = CHHapticEvent(eventType: .hapticContinuous, parameters: [sharpness, intensity], relativeTime: 0, duration: 1)

// now attempt to play the haptic, with our fading parameter
do {
    let pattern = try CHHapticPattern(events: [event], parameterCurves: [parameter])

    let player = try engine?.makePlayer(with: pattern)
    try player?.start(atTime: 0)
} catch {
    // add your own meaningful error handling here!
    print(error.localizedDescription)
}

var events = [CHHapticEvent]()
var curves = [CHHapticParameterCurve]()

do {
    // create one continuous buzz that fades out
    let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
    let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)

    let start = CHHapticParameterCurve.ControlPoint(relativeTime: 0, value: 1)
    let end = CHHapticParameterCurve.ControlPoint(relativeTime: 1.5, value: 0)

    let parameter = CHHapticParameterCurve(parameterID: .hapticIntensityControl, controlPoints: [start, end], relativeTime: 0)
    let event = CHHapticEvent(eventType: .hapticContinuous, parameters: [sharpness, intensity], relativeTime: 0, duration: 1.5)
    events.append(event)
    curves.append(parameter)
}

for _ in 1...16 {
    // make some sparkles
    let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
    let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
    let event = CHHapticEvent(eventType: .hapticTransient, parameters: [sharpness, intensity], relativeTime: TimeInterval.random(in: 0.1...1))
    events.append(event)
}

do {
    let pattern = try CHHapticPattern(events: events, parameterCurves: curves)

    let player = try engine?.makePlayer(with: pattern)
    try player?.start(atTime: 0)
} catch {
    print(error.localizedDescription)
}
