// Pin a button to the left edge of its parent, you might write code like this:

button.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true

// However, that has a problem: in right-to-left languages, the user interface ought to be flipped horizontally for the most part, but your button won’t move – you’ve specifically asked it to be pinned to the left edge regardless of the user’s device settings.

button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true

// For the same effect on the opposite edge, you should use trailingAnchor rather than rightAnchor. 
// Again, if you specifically want something to appear on the right regardless of language then this does not apply.

// For ease of use for maintain right to left languages it is always suggest to use leading and trailing anchors
