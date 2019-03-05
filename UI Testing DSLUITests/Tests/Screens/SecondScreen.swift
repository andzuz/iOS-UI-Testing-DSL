import XCTest

final class SecondScreen: Screen {
    
    internal var app: XCUIApplication = XCUIApplication()
    
    lazy var titleLabel: LabelElement = {
        LabelElement(with: app.staticTexts["SecondViewController.titleLabel"])
    }()
    
}
