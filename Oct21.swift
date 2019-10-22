// Disabling undo, redo, copy, and paste gestures using editingInteractionConfiguration

override var editingInteractionConfiguration: UIEditingInteractionConfiguration {
    return .none
}

// This property exists on UIResponder, which means you can override it at a number of other levels if you prefer.
