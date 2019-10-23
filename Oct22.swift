// Checking whether the device has Haptics Support

if CHHapticEngine.capabilitiesForHardware().supportsHaptics {
    // your haptics code here
}

// Computed Property

var hapticsAvailable: Bool {
    CHHapticEngine.capabilitiesForHardware().supportsHaptics
}
