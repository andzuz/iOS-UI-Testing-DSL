import XCTest

final class SecondScreen: Screen {
    
    internal var app: XCUIApplication = XCUIApplication()
    
    func titleLabel(_ closure: (LabelElement) -> (Void)) {
        closure(LabelElement(with: app.staticTexts["SecondViewController.titleLabel"]))
    }
    
}
