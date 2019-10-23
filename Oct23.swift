// Benchmarking App Launch Time measuring


func testLaunchPerformance() {
    measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
        XCUIApplication().launch()
    }
}
