#if targetEnvironment(macCatalyst)
    print("UIKit running on macOS")
#else
    print("Your regular code")
#endif

#if targetEnvironment(macCatalyst)
    print("UIKit running on macOS")
#elseif os(watchOS)
    print("Running on watchOS")
#else
    print("Your regular code")
#endif
