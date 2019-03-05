import XCTest

final class FirstScreen: Screen {
    
    internal var app: XCUIApplication = XCUIApplication()
    
    func titleLabel(_ closure: (LabelElement) -> (Void)) {
        closure(LabelElement(with: app.staticTexts["FirstViewController.titleLabel"]))
    }
    
    func subtitleLabel(_ closure: (LabelElement) -> (Void)) {
        closure(LabelElement(with: app.staticTexts["FirstViewController.subtitleLabel"]))
    }
    
    func proceedButton(_ closure: (ButtonElement) -> (Void)) {
        closure(ButtonElement(with: app.buttons["FirstViewController.proceedButton"]))
    }
    
}
